import concurrent.futures
import math

# Define the ranges for X, Y, and Z
X = range(0, 256 * 256 + 1)
Y = [2, 4, 8, 16, 32, 64, 128, 256]
Z = [1]

# Target value
target = 1000 * 60 * 60

# Function to evaluate a chunk of X values
def search_chunk(x_chunk):
    closest_value = math.inf
    best_combination = None

    for x in x_chunk:
        for y in Y:
            for z in Z:
                product = x * y * z
                difference = abs(product - target)

                if difference < abs(closest_value - target):
                    closest_value = product
                    best_combination = (x, y, z)

                    # Stop early if exact match is found
                    if closest_value == target:
                        return closest_value, best_combination

    return closest_value, best_combination

# Split the range of X into chunks
num_threads = 8  # Adjust based on the number of CPU cores
chunk_size = len(X) // num_threads
chunks = [list(X[i:i + chunk_size]) for i in range(0, len(X), chunk_size)]

# Multithreaded search
def find_closest_value():
    closest_value = math.inf
    best_combination = None

    with concurrent.futures.ThreadPoolExecutor(max_workers=num_threads) as executor:
        futures = executor.map(search_chunk, chunks)

        for result in futures:
            chunk_closest_value, chunk_best_combination = result
            
            if abs(chunk_closest_value - target) < abs(closest_value - target):
                closest_value = chunk_closest_value
                best_combination = chunk_best_combination

                # Stop early if exact match is found
                if closest_value == target:
                    break

    return closest_value, best_combination

# Main function
if __name__ == "__main__":
    closest_value, best_combination = find_closest_value()
    x, y, z = best_combination
    print(f"Closest value to {target} is {closest_value}")
    print(f"Achieved with X = {x}, Y = {y}, Z = {z}")

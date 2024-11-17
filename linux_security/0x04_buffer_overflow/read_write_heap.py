#!/usr/bin/python3
"""
replace a string in pid
"""
import sys


def usage_error():
    """desplay usage error message"""
    print("Usage: ./read_write_heap.py pid search_string replace_string")
    sys.exit(1)


if len(sys.argv) < 4:
    usage_error()

pid = sys.argv[1]
target_str = sys.argv[2]
new_str = sys.argv[3]

try:
    with open(f"/proc/{pid}/maps", "r") as maps_file:
        for line in maps_file:
            if "[heap]" in line:
                address_range = line.split()[0]
                heap_start, heap_end = [int(adr, 16) for adr in address_range
                                        .split("-")]

    mem_file_path = f"/proc/{pid}/mem"

    with open(mem_file_path, "r+b") as mem_file:
        mem_file.seek(heap_start)
        heap_data = mem_file.read(heap_end - heap_start)

        target_index = heap_data.find(target_str.encode())
        target_address = heap_start + target_index

        replacement = new_str.encode().ljust(len(target_str), b'\0')
        mem_file.seek(target_address)
        mem_file.write(replacement)


except PermissionError:
    print("Try running sudo.")
    sys.exit(1)
except FileNotFoundError:
    print(f"{pid} not found.")
    sys.exit(1)
except Exception as e:
    print(f"Error: {e}")
    sys.exit(1)

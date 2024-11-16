#!/usr/bin/python3
import psutil
import sys
import os
import re


"""
replace a string in pid
"""
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
                print("heap range = {} - {}"
                      .format(hex(heap_start), hex(heap_end)))
except Exception as e:
    print("error getting pid range")
    sys.exit(1)

mem_file_path = f"/proc/{pid}/mem"

try:
    with open(mem_file_path, "r+b") as mem_file:
        mem_file.seek(heap_start)
        heap_data = mem_file.read(heap_end - heap_start)

        target_index = heap_data.find(target_str.encode())
        if target_index == -1:
            print("targer string not found")
        else:
            print("ja")

        target_address = heap_start + target_index
        print("target address found at: {}".format(hex(target_address)))

        replacement = new_str.encode().ljust(len(target_str), b'\0')
        mem_file.seek(target_address)
        mem_file.write(replacement)
        print("success")

except Exception as e:
    print("error writing to mem address")

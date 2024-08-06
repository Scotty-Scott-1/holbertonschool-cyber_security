#!/bin/bash
dig @8.8.8.8 $1 ANY +noall +answer

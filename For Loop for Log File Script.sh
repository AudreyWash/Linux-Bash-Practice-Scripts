#!/bin/bash
for file in logfiles/*.log
do
    tar -czvf $file
done


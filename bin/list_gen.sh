#!/bin/bash

dest=/data/prerolls
files=()
sources=(fiverr ivipid priyansh)

for source in ${sources[@]};
do
  for file in ../${source}/*
  do
    f=$(echo "${file}" | cut -d/ -f 2-)
    files+=("${f}")
  done
done

for file in ${files[@]}
do
  echo -n "${dest}/${file};"
done

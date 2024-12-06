# Lua Pairs Iteration Order Issue

This repository demonstrates a potential issue with Lua's `pairs` iterator when used with nested tables.  The `pairs` function does not guarantee a specific iteration order, which can lead to unexpected behavior in scenarios where the order of processing is crucial.

The `bug.lua` file contains a simple example showcasing this problem. The `bugSolution.lua` file offers a solution using a different approach.

## Problem

The core issue stems from the fact that `pairs` iterates through a table in an unspecified order.  This is generally not a problem for simple tables, but when dealing with nested tables and recursive functions, inconsistencies can emerge, leading to different results on different Lua versions or different table implementations.

## Solution

The suggested solution involves using a different iteration method that explicitly controls the order of processing or carefully managing the order of keys before iteration.
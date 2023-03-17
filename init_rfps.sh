#!/bin/sh

rm -rf skiff_files/apps/pawls/papers/*
pawls add downloads/rfps
pawls preprocess pymupdf skiff_files/apps/pawls/papers
pawls assign skiff_files/apps/pawls/papers development_user@example.com --all

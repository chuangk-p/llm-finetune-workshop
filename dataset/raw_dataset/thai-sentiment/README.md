---
dataset_info:
  features:
  - name: label
    dtype: int64
  - name: text
    dtype: string
  splits:
  - name: train
    num_bytes: 107954.46131062569
    num_examples: 500
  - name: validation
    num_bytes: 22771.812662619253
    num_examples: 100
  - name: test
    num_bytes: 46169.45392491468
    num_examples: 200
  download_size: 86354
  dataset_size: 176895.72789815962
configs:
- config_name: default
  data_files:
  - split: train
    path: data/train-*
  - split: validation
    path: data/validation-*
  - split: test
    path: data/test-*
---

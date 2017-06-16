import json

# set up de the environment
cluster = {'master': ['localhost:2220'],
           'ps': ['localhost:2222', 'localhost:2221'],
           'worker': ['localhost:2223', 'localhost:2224']}

TF_CONFIG = json.dumps(
  {'cluster': cluster,
   'task': {'type': 'ps', 'index': 0},
   'model_dir': '/tmp/output_test',
   'environment': 'cloud'
  })

print(TF_CONFIG)

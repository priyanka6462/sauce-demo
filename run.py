import argparse
from robot import run


# Set up argument parsing
parser = argparse.ArgumentParser(description='Run Robot Framework tests with specific tags.')
parser.add_argument('--include', type=str, help='Tags to include')
parser.add_argument('--exclude', type=str, help='Tags to exclude')

args = parser.parse_args()

# Define the path to your test suite
test_suite_path = 'tests/sauce_demo/sauce_demo.robot'

# Run the test suite with specified tags
options = {
    'outputdir': 'results',
    'loglevel': 'DEBUG'
}

if args.include:
    options['include'] = args.include
if args.exclude:
    options['exclude'] = args.exclude

# Run the test suite with options
result = run(test_suite_path, **options)

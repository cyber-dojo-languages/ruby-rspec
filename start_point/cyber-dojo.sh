set -e

# remove existing coverage report
[ -e report/coverage.txt ] && rm report/coverage.txt

# turn off colour for new coverage report
export NO_COLOR=1

# Test output can be formatted as progress or documentation
rspec . \
  --format progress \
  --no-color

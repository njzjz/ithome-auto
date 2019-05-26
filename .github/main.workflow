workflow "Run" {
  on = "schedule(0 0 * * *)"
  resolves = ["python"]
}

workflow "Test" {
  on = "push"
  resolves = ["python"]
}

action "python" {
  uses = "docker://python:3"
  runs = "bash"
  args = ["-c", "pip install -r requirements.txt && python ithome.py -u $user -p $password"]
  secrets = [
    "password",
    "user",
  ]
}

resource "datadog_monitor" "http" {
  name    = "HTTP Alert! {{host.name}} "
  type    = "service check"
  message = " @all"
  query   = "\"http.can_connect\".over(\"*\").by(\"host\",\"instance\",\"url\").last(2).count_by_status()"
}

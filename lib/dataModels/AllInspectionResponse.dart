class AllInspectionResponse {
  String projectName = "";
  String inspection = "";
  String date = "";
  String progress = "";

  AllInspectionResponse(this.projectName, this.inspection, this.date, this.progress, );

  @override
  String toString() {
    return 'AllInspectionResponse{projectName: $projectName, inspection: $inspection, date: $date, progress: $progress}';
  }
}

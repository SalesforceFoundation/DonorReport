/**
 * @description A representation of a Donor Report, including layout
 * information and data
 */
public class DonorReport {
    /**
     * @description A list of the detail sections to appear on this report
     */
    public List<ReportSection> sections;

    /**
     * @description A list of the related lists to appear on this report
     */
    public List<ReportRelatedList> relatedLists;

    /**
     * @description A representation of a detail section of this report,
     * including layout information and data
     */
    public class ReportSection {
        /**
         * @description The display label for this section
         */
        public String label;

        /**
         * How should this section be displayed?  For example, as a record
         * highlight/header, as a single column, or as two columns.
         */
        public DonorReportSectionStyle style;

        /**
         * @description The field columns for this section, with data.
         */
        public List<ReportField> fields;
    }

    /**
     * @description A representation of a field to be displayed on this report,
     * including data.
     */
    public class ReportField {
        /**
         * @description The SObject field to be included in the report. This
         * includes the label and type of the field
         */
        public Schema.DescribeFieldResult field;

        /**
         * @description The value of this field
         */
        public Object value;
    }

    /**
     * @description A representation of a related list to be displayed on this
     * report, including data.
     */
    public class ReportRelatedList {
        /**
         * @description The labels of the columns to display for this related
         * list
         */
        public List<String> columnLabels;

        /**
         * @description The rows to display in this related list, which are
         * collections of report fields to display
         */
        public List<List<ReportField>> rows;
    }
}
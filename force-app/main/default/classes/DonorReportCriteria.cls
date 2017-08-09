/**
 * @description A representation of user criteria that controls the display and
 * data selection of a donor report
 */
public class DonorReportCriteria {
    /**
     * @description A list of the sections which a user can configure for the
     * donor report.
     */
    public List<CriteriaSection> sections;

    /**
     * @description A list of the related lists which a user can configure for
     * the donor report.
     */
    public List<CriteriaRelatedList> relatedLists;

    /**
     * @description A representation of the configuration options for a detail
     * section of the donor report. I.e., what is this section selected for
     * inclusion in the report, which fields should be included, etc.
     */
    public class CriteriaSection {
        /**
         * @description The display label of this detail section
         */
        public String label;

        /**
         * @description Has this section been selected for inclusion in the
         * donor report?
         */
        public Boolean isSelected;

        /**
         * @description A list of the fields within this detail section, and
         * whether those fields have been selected for inclusion in the report.
         */
        public List<CriteriaField> fields;
    }

    /**
     * @description A representation of the configuration of a field to be
     * included in the report, including the label of that field and whether
     * that field should be included in the report.
     */
    public class CriteriaField {
        /**
         * @description The field to be included, including the label, field
         * name, etc.
         */
        public Schema.DescribeFieldResult field;

        /**
         * @description Is this field selected for inclusion in the report?
         */
        public Boolean isSelected;
    }

    /**
     * @description A representation of the configuration of a related list to
     * be included in the report.  This includes information about which
     * related list to show, how many rows should be included in the report,
     * which fields should be included in the rows, and how those rows should
     * be sorted.  This also includes additional limiting criteria for limited
     * related records by date range or record type.
     */
    public class CriteriaRelatedList {
        /**
         * @description Which relationships does this represent?
         */
        public Schema.ChildRelationship relationship;

        /**
         * @description How many rows should be displayed in the report.
         */
        public Integer rowLimit;

        /**
         * @description Which record types should the related records be
         * limited to?
         */
        public List<String> recordTypes;

        /**
         * @description What record types are available for filtering?
         */
        public List<SelectOption> recordTypeOptions;

        /**
         * @description The start of the date range to limit the related
         * records to
         */
        public DateTime dateFilterStart;

        /**
         * @description The end of the date range to limit the related records to
         */
        public DateTime dateFilterEnd;

        /**
         * @description The field on the related object to use for date filtering
         */
        public Schema.DescribeFieldResult dateFilterField;

        /**
         * @description What date/time fields are available for filtering?
         */
        public List<SelectOption> dateFilterOptions;

        /**
         * @description Which field should we sort the related records by?
         */
        public Schema.DescribeFieldResult sortField;

        /**
         * @description Which fields are available for sorting by?
         */
        public List<SelectOption> sortFieldOptions;

        /**
         * @description In which order should we sort the related records? ASC
         * or DESC.
         */
        public String sortOrder;

        /**
         * @description Which fields are to be included in the related list.
         */
        public List<CriteriaField> fields;
    }
}
/**
 * @description A representation of user criteria that controls the display and
 * data selection of a donor report
 */
public class DonorReportCriteria {
    /**
     * @description A list of the sections which a user can configure for the
     * donor report.
     */
    public List<CriteriaSection> sections {get; set;}

    /**
     * @description A list of the related lists which a user can configure for
     * the donor report.
     */
    public List<CriteriaRelatedList> relatedLists {get; set;}

    /**
     * @description A representation of the configuration options for a detail
     * section of the donor report. I.e., what is this section selected for
     * inclusion in the report, which fields should be included, etc.
     */
    public class CriteriaSection {
        /**
         * @description The display label of this detail section
         */
        public String label {get; set;}

        /**
         * @description Has this section been selected for inclusion in the
         * donor report?
         */
        public Boolean isSelected {get; set;}

        /**
         * @description A list of the fields within this detail section, and
         * whether those fields have been selected for inclusion in the report.
         */
        public List<CriteriaField> fields {get; set;}
    }

    /**
     * @description A representation of the configuration of a field to be
     * included in the report, including the label of that field and whether
     * that field should be included in the report.
     */
    public class CriteriaField {
        /**
         * @description The display label of the SObject field
         */
        public String label {get; set;}

        /**
         * @description The API name of this field
         */
        public String fieldName {get; set;}

        /**
         * @description Is this field selected for inclusion in the report?
         */
        public Boolean isSelected {get; set;}
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
         * @description The plural name of the child object of this
         * relationship
         */
        public String objectName {get; set;}

        /**
         * The relationship name, from the perspective of the parent object
         */
        public String relationshipName {get; set;}

        /**
         * @description Has this related list been selected for inclusion in
         * the donor report?
         */
        public Boolean isSelected {get; set;}

        /**
         * @description How many rows should be displayed in the report.
         */
        public Integer rowLimit {get; set;}

        /**
         * @description Which record types should the related records be
         * limited to?
         */
        public List<String> recordTypes {get; set;}

        /**
         * @description What record types are available for filtering?
         */
        public List<SelectOption> recordTypeOptions {get; set;}

        /**
         * @description The start of the date range to limit the related
         * records to
         */
        public Date dateFilterStart {get; set;}

        /**
         * @description The end of the date range to limit the related records to
         */
        public Date dateFilterEnd {get; set;}

        /**
         * @description The field on the related object to use for date filtering
         */
        public SObjectFieldWrapper dateFilterField {get; set;}

        /**
         * @description What date/time fields are available for filtering?
         */
        public List<SelectOption> dateFilterOptions {get; set;}

        /**
         * @description Which field should we sort the related records by?
         */
        public SObjectFieldWrapper sortField {get; set;}

        /**
         * @description Which fields are available for sorting by?
         */
        public List<SelectOption> sortFieldOptions {get; set;}

        /**
         * @description In which order should we sort the related records? ASC
         * or DESC.
         */
        public String sortOrder {get; set;}

        /**
         * @description Which fields are to be included in the related list.
         */
        public List<CriteriaField> fields {get; set;}
    }
}
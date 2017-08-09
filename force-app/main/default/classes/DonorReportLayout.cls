/**
 * @description A representation of a page layout for use in building a donor
 * report
 */
public class DonorReportLayout {
    /**
     * @description A list of the detail sections of this layout
     */
    public List<LayoutSection> sections;

    /**
     * @description A list of the related lists available on this layout
     */
    public List<LayoutRelatedList> relatedLists;

    /**
     * @description The name of this layout
     */
    public String name;

    /**
     * @description A representation of a detail section available on this
     * layout.  This section has an associated style, such as whether it is a
     * record highlight/header, one column, or two column section.
     */
    public class LayoutSection {
        /**
         * @description The display label for this section
         */
        public String label;

        /**
         * @description The style of a section indicates how it should be
         * rendered.  I.e., this section is intended to be rendered as a record
         * highlight/header, a single column section, or two column section.
         */
        public DonorReportSectionStyle style;

        /**
         * @description A list of columns, which contain a list of fields that
         * should appear in that column.
         */
        public List<List<Schema.DescribeFieldResult>> columns;
    }

    /**
     * @description A representation of a related list available on the page
     * layout
     */
    public class LayoutRelatedList {
        /**
         * @description The relationship for this related list
         */
        public Schema.ChildRelationship relationship;

        /**
         * @description The field this related list should be sorted by
         */
        public Schema.DescribeFieldResult sortField;

        /**
         * @description The order in which this field should be sorted, either
         * ASC or DESC.
         */
        public String sortOrder;

        /**
         * @description The fields to be included in the related list
         */
        public List<Schema.DescribeFieldResult> fields;
    }
}
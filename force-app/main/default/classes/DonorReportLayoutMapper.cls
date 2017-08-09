public class DonorReportLayoutMapper {
    /**
     * @description Return a list of available page layouts for the given
     * SObject type.  This returns a map from the page layout "full name" to
     * the page layout's display "name".  The full name is unique, but will
     * only contain alphanumeric and underscores, whereas the display name can
     * contain spaces.
     *
     * @param type The SObject type to retrieve page layouts for
     */
    public Map<String, String> getPageLayouts(SObjectType type) {
        return null;
        // @todo
    }

    /**
     * @description Return a list of available compact layouts for the given
     * SObject type.  This returns a map from the compact layout API name to
     * the compact layout "master label".
     *
     * @param type The SObject type to retrieve compact layouts for
     */
    public Map<String, String> getCompactLayouts(SObjectType type) {
        return null;
        // @todo
    }

    /**
     * @description Retrieve page layout metadata and return as a
     * DonorReportLayout instance.
     *
     * @param The page layout "full name" to retrieve
     */
    public DonorReportLayout getDonorReportLayout(String layoutName) {
        return null;
        // @todo
    }

    /**
     * @description Retrieve page layout and compact layout metadata and return
     * as a DonorReportLayout instance.  The compact layout will be included in
     * the DonorReportLayout as the first section, with an appropriate section
     * type.
     */
    public DonorReportLayout getDonorReportLayout(String layoutName, String compactLayoutName) {
        return null;
        // @todo
    }
}
public class SObjectFieldWrapper {
    private transient Schema.DescribeFieldResult field;

    public String label {get { return getLabel(); } private set;}

    public String name {get { return getName(); } private set;}

    public DisplayType type {get { return getType(); } private set;}

    public Boolean isHtmlFormatted {get { return isHtmlFormatted(); } private set;}

    public SObjectFieldWrapper(SObjectField field) {
        this.field = field.getDescribe();
    }

    private String getLabel() {
        return field.getLabel();
    }

    private String getName() {
        return field.getName();
    }

    private DisplayType getType() {
        return field.getType();
    }

    private Boolean isSortable() {
        return field.isSortable();
    }

    private Boolean isFilterable() {
        return field.isFilterable();
    }

    private Boolean isHtmlFormatted() {
        return field.isHtmlFormatted();
    }

    private Boolean isAccessible() {
        return field.isAccessible();
    }
}
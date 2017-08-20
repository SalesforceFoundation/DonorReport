public with sharing class DonorReportController {
    public DonorReportCriteria criteria {get; set;}

    public DonorReportController() {
        criteria = new DonorReportCriteria();
        criteria.sections = new List<DonorReportCriteria.CriteriaSection>();
        criteria.relatedLists = new List<DonorReportCriteria.CriteriaRelatedList>();

        DonorReportCriteria.CriteriaSection headerSection = new DonorReportCriteria.CriteriaSection();
        headerSection.label = 'Report Header';
        headerSection.isSelected = true;
        headerSection.fields = new List<DonorReportCriteria.CriteriaField>();

        DonorReportCriteria.CriteriaField phoneField = new DonorReportCriteria.CriteriaField();
        phoneField.fieldName = 'Phone';
        phoneField.label = 'Phone';
        phoneField.isSelected = true;

        DonorReportCriteria.CriteriaField firstNameField = new DonorReportCriteria.CriteriaField();
        firstNameField.fieldName = 'FirstName';
        firstNameField.label = 'First Name';
        firstNameField.isSelected = true;

        DonorReportCriteria.CriteriaField lastNameField = new DonorReportCriteria.CriteriaField();
        lastNameField.fieldName = 'LastName';
        lastNameField.label = 'Last Name';
        lastNameField.isSelected = true;

        headerSection.fields.add(phoneField);
        headerSection.fields.add(firstNameField);
        headerSection.fields.add(lastNameField);

        DonorReportCriteria.CriteriaSection detailSection = new DonorReportCriteria.CriteriaSection();
        detailSection.label = 'Details';
        detailSection.isSelected = true;
        detailSection.fields = new List<DonorReportCriteria.CriteriaField>();

        DonorReportCriteria.CriteriaField phoneField2 = new DonorReportCriteria.CriteriaField();
        phoneField2.fieldName = 'Phone';
        phoneField2.label = 'Phone';
        phoneField2.isSelected = true;

        DonorReportCriteria.CriteriaField firstNameField2 = new DonorReportCriteria.CriteriaField();
        firstNameField2.fieldName = 'FirstName';
        firstNameField2.label = 'First Name';
        firstNameField2.isSelected = true;

        DonorReportCriteria.CriteriaField lastNameField2 = new DonorReportCriteria.CriteriaField();
        lastNameField2.fieldName = 'LastName';
        lastNameField2.label = 'Last Name';
        lastNameField2.isSelected = true;

        detailSection.fields.add(phoneField);
        detailSection.fields.add(firstNameField);
        detailSection.fields.add(lastNameField);

        criteria.sections.add(headerSection);
        criteria.sections.add(detailSection);

        DonorReportCriteria.CriteriaRelatedList relatedList1 = new DonorReportCriteria.CriteriaRelatedList();
        relatedList1.objectName = 'Opportunities';
        relatedList1.relationshipName = 'Opportunities';
        relatedList1.rowLimit = 10;
        relatedList1.recordTypes = new List<String>{'Foo', 'Bar'};

        relatedList1.recordTypeOptions = new List<SelectOption>();
        relatedList1.recordTypeOptions.add(new SelectOption('Foo', 'Foo RT'));
        relatedList1.recordTypeOptions.add(new SelectOption('Baz', 'Baz RT'));
        relatedList1.recordTypeOptions.add(new SelectOption('Bat', 'Bat RT'));
        relatedList1.recordTypeOptions.add(new SelectOption('Bar', 'Bar RT'));
        relatedList1.recordTypeOptions.add(new SelectOption('Quux', 'Quux RT'));

        relatedList1.dateFilterStart = Date.today();
        relatedList1.dateFilterEnd = Date.today();
        relatedList1.dateFilterField = new SObjectFieldWrapper(Contact.CreatedDate);

        relatedList1.dateFilterOptions = new List<SelectOption>();
        relatedList1.dateFilterOptions.add(new SelectOption('CreatedDate', 'Created Date'));
        relatedList1.dateFilterOptions.add(new SelectOption('LastModifiedDate', 'Last Modified Date'));
        relatedList1.dateFilterOptions.add(new SelectOption('Birthdate', 'Birthdate'));

        relatedList1.sortField = new SObjectFieldWrapper(Contact.Name);
        relatedList1.sortOrder = 'ASC';

        relatedList1.sortFieldOptions = new List<SelectOption>();
        relatedList1.sortFieldOptions.add(new SelectOption('Name', 'Contact Name'));
        relatedList1.sortFieldOptions.add(new SelectOption('FirstName', 'First Name'));
        relatedList1.sortFieldOptions.add(new SelectOption('LastName', 'Last Name'));

        relatedList1.fields = new List<DonorReportCriteria.CriteriaField>();

        DonorReportCriteria.CriteriaField relatedList1Field1 = new DonorReportCriteria.CriteriaField();
        relatedList1Field1.fieldName = 'FirstName';
        relatedList1Field1.label = 'First Name';
        relatedList1Field1.isSelected = true;

        DonorReportCriteria.CriteriaField relatedList1Field2 = new DonorReportCriteria.CriteriaField();
        relatedList1Field2.fieldName = 'LastName';
        relatedList1Field2.label = 'Last Name';
        relatedList1Field2.isSelected = true;

        DonorReportCriteria.CriteriaField relatedList1Field3 = new DonorReportCriteria.CriteriaField();
        relatedList1Field3.fieldName = 'CreatedDate';
        relatedList1Field3.label = 'Created Date';
        relatedList1Field3.isSelected = true;

        relatedList1.fields.add(relatedList1Field1);
        relatedList1.fields.add(relatedList1Field2);
        relatedList1.fields.add(relatedList1Field3);

        criteria.relatedLists.add(relatedList1);
    }
}
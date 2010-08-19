/*

Copyright 2008-2010 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision
$Date
$Author
$HeaderURL

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_StepBasic_Action.hxx>
#include<Handle_StepBasic_ActionAssignment.hxx>
#include<Handle_StepBasic_ActionMethod.hxx>
#include<Handle_StepBasic_ActionRequestAssignment.hxx>
#include<Handle_StepBasic_ActionRequestSolution.hxx>
#include<Handle_StepBasic_Address.hxx>
#include<Handle_StepBasic_ApplicationContext.hxx>
#include<Handle_StepBasic_ApplicationContextElement.hxx>
#include<Handle_StepBasic_ApplicationProtocolDefinition.hxx>
#include<Handle_StepBasic_Approval.hxx>
#include<Handle_StepBasic_ApprovalAssignment.hxx>
#include<Handle_StepBasic_ApprovalDateTime.hxx>
#include<Handle_StepBasic_ApprovalPersonOrganization.hxx>
#include<Handle_StepBasic_ApprovalRelationship.hxx>
#include<Handle_StepBasic_ApprovalRole.hxx>
#include<Handle_StepBasic_ApprovalStatus.hxx>
#include<Handle_StepBasic_AreaUnit.hxx>
#include<Handle_StepBasic_CalendarDate.hxx>
#include<Handle_StepBasic_Certification.hxx>
#include<Handle_StepBasic_CertificationAssignment.hxx>
#include<Handle_StepBasic_CertificationType.hxx>
#include<Handle_StepBasic_CharacterizedObject.hxx>
#include<Handle_StepBasic_Contract.hxx>
#include<Handle_StepBasic_ContractAssignment.hxx>
#include<Handle_StepBasic_ContractType.hxx>
#include<Handle_StepBasic_ConversionBasedUnit.hxx>
#include<Handle_StepBasic_ConversionBasedUnitAndAreaUnit.hxx>
#include<Handle_StepBasic_ConversionBasedUnitAndLengthUnit.hxx>
#include<Handle_StepBasic_ConversionBasedUnitAndMassUnit.hxx>
#include<Handle_StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx>
#include<Handle_StepBasic_ConversionBasedUnitAndRatioUnit.hxx>
#include<Handle_StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx>
#include<Handle_StepBasic_ConversionBasedUnitAndTimeUnit.hxx>
#include<Handle_StepBasic_ConversionBasedUnitAndVolumeUnit.hxx>
#include<Handle_StepBasic_CoordinatedUniversalTimeOffset.hxx>
#include<Handle_StepBasic_Date.hxx>
#include<Handle_StepBasic_DateAndTime.hxx>
#include<Handle_StepBasic_DateAndTimeAssignment.hxx>
#include<Handle_StepBasic_DateAssignment.hxx>
#include<Handle_StepBasic_DateRole.hxx>
#include<Handle_StepBasic_DateTimeRole.hxx>
#include<Handle_StepBasic_DerivedUnit.hxx>
#include<Handle_StepBasic_DerivedUnitElement.hxx>
#include<Handle_StepBasic_DesignContext.hxx>
#include<Handle_StepBasic_DigitalDocument.hxx>
#include<Handle_StepBasic_DimensionalExponents.hxx>
#include<Handle_StepBasic_Document.hxx>
#include<Handle_StepBasic_DocumentFile.hxx>
#include<Handle_StepBasic_DocumentProductAssociation.hxx>
#include<Handle_StepBasic_DocumentProductEquivalence.hxx>
#include<Handle_StepBasic_DocumentReference.hxx>
#include<Handle_StepBasic_DocumentRelationship.hxx>
#include<Handle_StepBasic_DocumentRepresentationType.hxx>
#include<Handle_StepBasic_DocumentType.hxx>
#include<Handle_StepBasic_DocumentUsageConstraint.hxx>
#include<Handle_StepBasic_Effectivity.hxx>
#include<Handle_StepBasic_EffectivityAssignment.hxx>
#include<Handle_StepBasic_EulerAngles.hxx>
#include<Handle_StepBasic_ExternalIdentificationAssignment.hxx>
#include<Handle_StepBasic_ExternalSource.hxx>
#include<Handle_StepBasic_ExternallyDefinedItem.hxx>
#include<Handle_StepBasic_GeneralProperty.hxx>
#include<Handle_StepBasic_Group.hxx>
#include<Handle_StepBasic_GroupAssignment.hxx>
#include<Handle_StepBasic_GroupRelationship.hxx>
#include<Handle_StepBasic_HArray1OfApproval.hxx>
#include<Handle_StepBasic_HArray1OfDerivedUnitElement.hxx>
#include<Handle_StepBasic_HArray1OfDocument.hxx>
#include<Handle_StepBasic_HArray1OfNamedUnit.hxx>
#include<Handle_StepBasic_HArray1OfOrganization.hxx>
#include<Handle_StepBasic_HArray1OfPerson.hxx>
#include<Handle_StepBasic_HArray1OfProduct.hxx>
#include<Handle_StepBasic_HArray1OfProductContext.hxx>
#include<Handle_StepBasic_HArray1OfProductDefinition.hxx>
#include<Handle_StepBasic_HArray1OfUncertaintyMeasureWithUnit.hxx>
#include<Handle_StepBasic_IdentificationAssignment.hxx>
#include<Handle_StepBasic_IdentificationRole.hxx>
#include<Handle_StepBasic_LengthMeasureWithUnit.hxx>
#include<Handle_StepBasic_LengthUnit.hxx>
#include<Handle_StepBasic_LocalTime.hxx>
#include<Handle_StepBasic_MassMeasureWithUnit.hxx>
#include<Handle_StepBasic_MassUnit.hxx>
#include<Handle_StepBasic_MeasureValueMember.hxx>
#include<Handle_StepBasic_MeasureWithUnit.hxx>
#include<Handle_StepBasic_MechanicalContext.hxx>
#include<Handle_StepBasic_NameAssignment.hxx>
#include<Handle_StepBasic_NamedUnit.hxx>
#include<Handle_StepBasic_ObjectRole.hxx>
#include<Handle_StepBasic_OrdinalDate.hxx>
#include<Handle_StepBasic_Organization.hxx>
#include<Handle_StepBasic_OrganizationAssignment.hxx>
#include<Handle_StepBasic_OrganizationRole.hxx>
#include<Handle_StepBasic_OrganizationalAddress.hxx>
#include<Handle_StepBasic_Person.hxx>
#include<Handle_StepBasic_PersonAndOrganization.hxx>
#include<Handle_StepBasic_PersonAndOrganizationAssignment.hxx>
#include<Handle_StepBasic_PersonAndOrganizationRole.hxx>
#include<Handle_StepBasic_PersonalAddress.hxx>
#include<Handle_StepBasic_PhysicallyModeledProductDefinition.hxx>
#include<Handle_StepBasic_PlaneAngleMeasureWithUnit.hxx>
#include<Handle_StepBasic_PlaneAngleUnit.hxx>
#include<Handle_StepBasic_Product.hxx>
#include<Handle_StepBasic_ProductCategory.hxx>
#include<Handle_StepBasic_ProductCategoryRelationship.hxx>
#include<Handle_StepBasic_ProductConceptContext.hxx>
#include<Handle_StepBasic_ProductContext.hxx>
#include<Handle_StepBasic_ProductDefinition.hxx>
#include<Handle_StepBasic_ProductDefinitionContext.hxx>
#include<Handle_StepBasic_ProductDefinitionEffectivity.hxx>
#include<Handle_StepBasic_ProductDefinitionFormation.hxx>
#include<Handle_StepBasic_ProductDefinitionFormationRelationship.hxx>
#include<Handle_StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx>
#include<Handle_StepBasic_ProductDefinitionRelationship.hxx>
#include<Handle_StepBasic_ProductDefinitionWithAssociatedDocuments.hxx>
#include<Handle_StepBasic_ProductRelatedProductCategory.hxx>
#include<Handle_StepBasic_ProductType.hxx>
#include<Handle_StepBasic_RatioMeasureWithUnit.hxx>
#include<Handle_StepBasic_RatioUnit.hxx>
#include<Handle_StepBasic_RoleAssociation.hxx>
#include<Handle_StepBasic_SecurityClassification.hxx>
#include<Handle_StepBasic_SecurityClassificationAssignment.hxx>
#include<Handle_StepBasic_SecurityClassificationLevel.hxx>
#include<Handle_StepBasic_SiUnit.hxx>
#include<Handle_StepBasic_SiUnitAndAreaUnit.hxx>
#include<Handle_StepBasic_SiUnitAndLengthUnit.hxx>
#include<Handle_StepBasic_SiUnitAndMassUnit.hxx>
#include<Handle_StepBasic_SiUnitAndPlaneAngleUnit.hxx>
#include<Handle_StepBasic_SiUnitAndRatioUnit.hxx>
#include<Handle_StepBasic_SiUnitAndSolidAngleUnit.hxx>
#include<Handle_StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx>
#include<Handle_StepBasic_SiUnitAndTimeUnit.hxx>
#include<Handle_StepBasic_SiUnitAndVolumeUnit.hxx>
#include<Handle_StepBasic_SizeMember.hxx>
#include<Handle_StepBasic_SolidAngleMeasureWithUnit.hxx>
#include<Handle_StepBasic_SolidAngleUnit.hxx>
#include<Handle_StepBasic_ThermodynamicTemperatureUnit.hxx>
#include<Handle_StepBasic_TimeMeasureWithUnit.hxx>
#include<Handle_StepBasic_TimeUnit.hxx>
#include<Handle_StepBasic_UncertaintyMeasureWithUnit.hxx>
#include<Handle_StepBasic_VersionedActionRequest.hxx>
#include<Handle_StepBasic_VolumeUnit.hxx>
#include<Handle_StepBasic_WeekOfYearAndDayDate.hxx>
#include<StepBasic_Action.hxx>
#include<StepBasic_ActionAssignment.hxx>
#include<StepBasic_ActionMethod.hxx>
#include<StepBasic_ActionRequestAssignment.hxx>
#include<StepBasic_ActionRequestSolution.hxx>
#include<StepBasic_Address.hxx>
#include<StepBasic_AheadOrBehind.hxx>
#include<StepBasic_ApplicationContext.hxx>
#include<StepBasic_ApplicationContextElement.hxx>
#include<StepBasic_ApplicationProtocolDefinition.hxx>
#include<StepBasic_Approval.hxx>
#include<StepBasic_ApprovalAssignment.hxx>
#include<StepBasic_ApprovalDateTime.hxx>
#include<StepBasic_ApprovalPersonOrganization.hxx>
#include<StepBasic_ApprovalRelationship.hxx>
#include<StepBasic_ApprovalRole.hxx>
#include<StepBasic_ApprovalStatus.hxx>
#include<StepBasic_AreaUnit.hxx>
#include<StepBasic_Array1OfApproval.hxx>
#include<StepBasic_Array1OfDerivedUnitElement.hxx>
#include<StepBasic_Array1OfDocument.hxx>
#include<StepBasic_Array1OfNamedUnit.hxx>
#include<StepBasic_Array1OfOrganization.hxx>
#include<StepBasic_Array1OfPerson.hxx>
#include<StepBasic_Array1OfProduct.hxx>
#include<StepBasic_Array1OfProductContext.hxx>
#include<StepBasic_Array1OfProductDefinition.hxx>
#include<StepBasic_Array1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_CalendarDate.hxx>
#include<StepBasic_Certification.hxx>
#include<StepBasic_CertificationAssignment.hxx>
#include<StepBasic_CertificationType.hxx>
#include<StepBasic_CharacterizedObject.hxx>
#include<StepBasic_Contract.hxx>
#include<StepBasic_ContractAssignment.hxx>
#include<StepBasic_ContractType.hxx>
#include<StepBasic_ConversionBasedUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndAreaUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndLengthUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndMassUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndRatioUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndTimeUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndVolumeUnit.hxx>
#include<StepBasic_CoordinatedUniversalTimeOffset.hxx>
#include<StepBasic_Date.hxx>
#include<StepBasic_DateAndTime.hxx>
#include<StepBasic_DateAndTimeAssignment.hxx>
#include<StepBasic_DateAssignment.hxx>
#include<StepBasic_DateRole.hxx>
#include<StepBasic_DateTimeRole.hxx>
#include<StepBasic_DateTimeSelect.hxx>
#include<StepBasic_DerivedUnit.hxx>
#include<StepBasic_DerivedUnitElement.hxx>
#include<StepBasic_DesignContext.hxx>
#include<StepBasic_DigitalDocument.hxx>
#include<StepBasic_DimensionalExponents.hxx>
#include<StepBasic_Document.hxx>
#include<StepBasic_DocumentFile.hxx>
#include<StepBasic_DocumentProductAssociation.hxx>
#include<StepBasic_DocumentProductEquivalence.hxx>
#include<StepBasic_DocumentReference.hxx>
#include<StepBasic_DocumentRelationship.hxx>
#include<StepBasic_DocumentRepresentationType.hxx>
#include<StepBasic_DocumentType.hxx>
#include<StepBasic_DocumentUsageConstraint.hxx>
#include<StepBasic_Effectivity.hxx>
#include<StepBasic_EffectivityAssignment.hxx>
#include<StepBasic_EulerAngles.hxx>
#include<StepBasic_ExternalIdentificationAssignment.hxx>
#include<StepBasic_ExternalSource.hxx>
#include<StepBasic_ExternallyDefinedItem.hxx>
#include<StepBasic_GeneralProperty.hxx>
#include<StepBasic_Group.hxx>
#include<StepBasic_GroupAssignment.hxx>
#include<StepBasic_GroupRelationship.hxx>
#include<StepBasic_HArray1OfApproval.hxx>
#include<StepBasic_HArray1OfDerivedUnitElement.hxx>
#include<StepBasic_HArray1OfDocument.hxx>
#include<StepBasic_HArray1OfNamedUnit.hxx>
#include<StepBasic_HArray1OfOrganization.hxx>
#include<StepBasic_HArray1OfPerson.hxx>
#include<StepBasic_HArray1OfProduct.hxx>
#include<StepBasic_HArray1OfProductContext.hxx>
#include<StepBasic_HArray1OfProductDefinition.hxx>
#include<StepBasic_HArray1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_IdentificationAssignment.hxx>
#include<StepBasic_IdentificationRole.hxx>
#include<StepBasic_LengthMeasureWithUnit.hxx>
#include<StepBasic_LengthUnit.hxx>
#include<StepBasic_LocalTime.hxx>
#include<StepBasic_MassMeasureWithUnit.hxx>
#include<StepBasic_MassUnit.hxx>
#include<StepBasic_MeasureValueMember.hxx>
#include<StepBasic_MeasureWithUnit.hxx>
#include<StepBasic_MechanicalContext.hxx>
#include<StepBasic_NameAssignment.hxx>
#include<StepBasic_NamedUnit.hxx>
#include<StepBasic_ObjectRole.hxx>
#include<StepBasic_OrdinalDate.hxx>
#include<StepBasic_Organization.hxx>
#include<StepBasic_OrganizationAssignment.hxx>
#include<StepBasic_OrganizationRole.hxx>
#include<StepBasic_OrganizationalAddress.hxx>
#include<StepBasic_Person.hxx>
#include<StepBasic_PersonAndOrganization.hxx>
#include<StepBasic_PersonAndOrganizationAssignment.hxx>
#include<StepBasic_PersonAndOrganizationRole.hxx>
#include<StepBasic_PersonOrganizationSelect.hxx>
#include<StepBasic_PersonalAddress.hxx>
#include<StepBasic_PhysicallyModeledProductDefinition.hxx>
#include<StepBasic_PlaneAngleMeasureWithUnit.hxx>
#include<StepBasic_PlaneAngleUnit.hxx>
#include<StepBasic_Product.hxx>
#include<StepBasic_ProductCategory.hxx>
#include<StepBasic_ProductCategoryRelationship.hxx>
#include<StepBasic_ProductConceptContext.hxx>
#include<StepBasic_ProductContext.hxx>
#include<StepBasic_ProductDefinition.hxx>
#include<StepBasic_ProductDefinitionContext.hxx>
#include<StepBasic_ProductDefinitionEffectivity.hxx>
#include<StepBasic_ProductDefinitionFormation.hxx>
#include<StepBasic_ProductDefinitionFormationRelationship.hxx>
#include<StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx>
#include<StepBasic_ProductDefinitionRelationship.hxx>
#include<StepBasic_ProductDefinitionWithAssociatedDocuments.hxx>
#include<StepBasic_ProductOrFormationOrDefinition.hxx>
#include<StepBasic_ProductRelatedProductCategory.hxx>
#include<StepBasic_ProductType.hxx>
#include<StepBasic_RatioMeasureWithUnit.hxx>
#include<StepBasic_RatioUnit.hxx>
#include<StepBasic_RoleAssociation.hxx>
#include<StepBasic_RoleSelect.hxx>
#include<StepBasic_SecurityClassification.hxx>
#include<StepBasic_SecurityClassificationAssignment.hxx>
#include<StepBasic_SecurityClassificationLevel.hxx>
#include<StepBasic_SiPrefix.hxx>
#include<StepBasic_SiUnit.hxx>
#include<StepBasic_SiUnitAndAreaUnit.hxx>
#include<StepBasic_SiUnitAndLengthUnit.hxx>
#include<StepBasic_SiUnitAndMassUnit.hxx>
#include<StepBasic_SiUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_SiUnitAndRatioUnit.hxx>
#include<StepBasic_SiUnitAndSolidAngleUnit.hxx>
#include<StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx>
#include<StepBasic_SiUnitAndTimeUnit.hxx>
#include<StepBasic_SiUnitAndVolumeUnit.hxx>
#include<StepBasic_SiUnitName.hxx>
#include<StepBasic_SizeMember.hxx>
#include<StepBasic_SizeSelect.hxx>
#include<StepBasic_SolidAngleMeasureWithUnit.hxx>
#include<StepBasic_SolidAngleUnit.hxx>
#include<StepBasic_Source.hxx>
#include<StepBasic_SourceItem.hxx>
#include<StepBasic_ThermodynamicTemperatureUnit.hxx>
#include<StepBasic_TimeMeasureWithUnit.hxx>
#include<StepBasic_TimeUnit.hxx>
#include<StepBasic_UncertaintyMeasureWithUnit.hxx>
#include<StepBasic_Unit.hxx>
#include<StepBasic_VersionedActionRequest.hxx>
#include<StepBasic_VolumeUnit.hxx>
#include<StepBasic_WeekOfYearAndDayDate.hxx>

// Additional headers necessary for compilation.

#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_CopyMap.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Handle_Interface_EntityCluster.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_GTool.hxx>
#include<Handle_Interface_GeneralModule.hxx>
#include<Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include<Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Interface_HSequenceOfCheck.hxx>
#include<Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Handle_Interface_IntVal.hxx>
#include<Handle_Interface_InterfaceError.hxx>
#include<Handle_Interface_InterfaceMismatch.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_NodeOfGeneralLib.hxx>
#include<Handle_Interface_NodeOfReaderLib.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Handle_Interface_ParamSet.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_Interface_ReaderModule.hxx>
#include<Handle_Interface_ReportEntity.hxx>
#include<Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Handle_Interface_SignLabel.hxx>
#include<Handle_Interface_SignType.hxx>
#include<Handle_Interface_Static.hxx>
#include<Handle_Interface_TypedValue.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_StepData_SelectMember.hxx>
%}

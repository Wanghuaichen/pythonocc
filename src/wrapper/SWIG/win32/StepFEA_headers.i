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

#include<Handle_StepFEA_AlignedCurve3dElementCoordinateSystem.hxx>
#include<Handle_StepFEA_AlignedSurface3dElementCoordinateSystem.hxx>
#include<Handle_StepFEA_ArbitraryVolume3dElementCoordinateSystem.hxx>
#include<Handle_StepFEA_ConstantSurface3dElementCoordinateSystem.hxx>
#include<Handle_StepFEA_Curve3dElementProperty.hxx>
#include<Handle_StepFEA_Curve3dElementRepresentation.hxx>
#include<Handle_StepFEA_CurveElementEndOffset.hxx>
#include<Handle_StepFEA_CurveElementEndRelease.hxx>
#include<Handle_StepFEA_CurveElementInterval.hxx>
#include<Handle_StepFEA_CurveElementIntervalConstant.hxx>
#include<Handle_StepFEA_CurveElementIntervalLinearlyVarying.hxx>
#include<Handle_StepFEA_CurveElementLocation.hxx>
#include<Handle_StepFEA_DegreeOfFreedomMember.hxx>
#include<Handle_StepFEA_DummyNode.hxx>
#include<Handle_StepFEA_ElementGeometricRelationship.hxx>
#include<Handle_StepFEA_ElementGroup.hxx>
#include<Handle_StepFEA_ElementRepresentation.hxx>
#include<Handle_StepFEA_FeaAreaDensity.hxx>
#include<Handle_StepFEA_FeaAxis2Placement3d.hxx>
#include<Handle_StepFEA_FeaCurveSectionGeometricRelationship.hxx>
#include<Handle_StepFEA_FeaGroup.hxx>
#include<Handle_StepFEA_FeaLinearElasticity.hxx>
#include<Handle_StepFEA_FeaMassDensity.hxx>
#include<Handle_StepFEA_FeaMaterialPropertyRepresentation.hxx>
#include<Handle_StepFEA_FeaMaterialPropertyRepresentationItem.hxx>
#include<Handle_StepFEA_FeaModel.hxx>
#include<Handle_StepFEA_FeaModel3d.hxx>
#include<Handle_StepFEA_FeaModelDefinition.hxx>
#include<Handle_StepFEA_FeaMoistureAbsorption.hxx>
#include<Handle_StepFEA_FeaParametricPoint.hxx>
#include<Handle_StepFEA_FeaRepresentationItem.hxx>
#include<Handle_StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx>
#include<Handle_StepFEA_FeaShellBendingStiffness.hxx>
#include<Handle_StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx>
#include<Handle_StepFEA_FeaShellMembraneStiffness.hxx>
#include<Handle_StepFEA_FeaShellShearStiffness.hxx>
#include<Handle_StepFEA_FeaSurfaceSectionGeometricRelationship.hxx>
#include<Handle_StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx>
#include<Handle_StepFEA_FreedomAndCoefficient.hxx>
#include<Handle_StepFEA_FreedomsList.hxx>
#include<Handle_StepFEA_GeometricNode.hxx>
#include<Handle_StepFEA_HArray1OfCurveElementEndOffset.hxx>
#include<Handle_StepFEA_HArray1OfCurveElementEndRelease.hxx>
#include<Handle_StepFEA_HArray1OfCurveElementInterval.hxx>
#include<Handle_StepFEA_HArray1OfDegreeOfFreedom.hxx>
#include<Handle_StepFEA_HArray1OfElementRepresentation.hxx>
#include<Handle_StepFEA_HArray1OfNodeRepresentation.hxx>
#include<Handle_StepFEA_HSequenceOfCurve3dElementProperty.hxx>
#include<Handle_StepFEA_HSequenceOfElementGeometricRelationship.hxx>
#include<Handle_StepFEA_HSequenceOfElementRepresentation.hxx>
#include<Handle_StepFEA_HSequenceOfNodeRepresentation.hxx>
#include<Handle_StepFEA_Node.hxx>
#include<Handle_StepFEA_NodeDefinition.hxx>
#include<Handle_StepFEA_NodeGroup.hxx>
#include<Handle_StepFEA_NodeRepresentation.hxx>
#include<Handle_StepFEA_NodeSet.hxx>
#include<Handle_StepFEA_NodeWithSolutionCoordinateSystem.hxx>
#include<Handle_StepFEA_NodeWithVector.hxx>
#include<Handle_StepFEA_ParametricCurve3dElementCoordinateDirection.hxx>
#include<Handle_StepFEA_ParametricCurve3dElementCoordinateSystem.hxx>
#include<Handle_StepFEA_ParametricSurface3dElementCoordinateSystem.hxx>
#include<Handle_StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty.hxx>
#include<Handle_StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship.hxx>
#include<Handle_StepFEA_SequenceNodeOfSequenceOfElementRepresentation.hxx>
#include<Handle_StepFEA_SequenceNodeOfSequenceOfNodeRepresentation.hxx>
#include<Handle_StepFEA_Surface3dElementRepresentation.hxx>
#include<Handle_StepFEA_SymmetricTensor23dMember.hxx>
#include<Handle_StepFEA_SymmetricTensor43dMember.hxx>
#include<Handle_StepFEA_Volume3dElementRepresentation.hxx>
#include<StepFEA_AlignedCurve3dElementCoordinateSystem.hxx>
#include<StepFEA_AlignedSurface3dElementCoordinateSystem.hxx>
#include<StepFEA_ArbitraryVolume3dElementCoordinateSystem.hxx>
#include<StepFEA_Array1OfCurveElementEndOffset.hxx>
#include<StepFEA_Array1OfCurveElementEndRelease.hxx>
#include<StepFEA_Array1OfCurveElementInterval.hxx>
#include<StepFEA_Array1OfDegreeOfFreedom.hxx>
#include<StepFEA_Array1OfElementRepresentation.hxx>
#include<StepFEA_Array1OfNodeRepresentation.hxx>
#include<StepFEA_ConstantSurface3dElementCoordinateSystem.hxx>
#include<StepFEA_CoordinateSystemType.hxx>
#include<StepFEA_Curve3dElementProperty.hxx>
#include<StepFEA_Curve3dElementRepresentation.hxx>
#include<StepFEA_CurveEdge.hxx>
#include<StepFEA_CurveElementEndCoordinateSystem.hxx>
#include<StepFEA_CurveElementEndOffset.hxx>
#include<StepFEA_CurveElementEndRelease.hxx>
#include<StepFEA_CurveElementInterval.hxx>
#include<StepFEA_CurveElementIntervalConstant.hxx>
#include<StepFEA_CurveElementIntervalLinearlyVarying.hxx>
#include<StepFEA_CurveElementLocation.hxx>
#include<StepFEA_DegreeOfFreedom.hxx>
#include<StepFEA_DegreeOfFreedomMember.hxx>
#include<StepFEA_DummyNode.hxx>
#include<StepFEA_ElementGeometricRelationship.hxx>
#include<StepFEA_ElementGroup.hxx>
#include<StepFEA_ElementOrElementGroup.hxx>
#include<StepFEA_ElementRepresentation.hxx>
#include<StepFEA_ElementVolume.hxx>
#include<StepFEA_EnumeratedDegreeOfFreedom.hxx>
#include<StepFEA_FeaAreaDensity.hxx>
#include<StepFEA_FeaAxis2Placement3d.hxx>
#include<StepFEA_FeaCurveSectionGeometricRelationship.hxx>
#include<StepFEA_FeaGroup.hxx>
#include<StepFEA_FeaLinearElasticity.hxx>
#include<StepFEA_FeaMassDensity.hxx>
#include<StepFEA_FeaMaterialPropertyRepresentation.hxx>
#include<StepFEA_FeaMaterialPropertyRepresentationItem.hxx>
#include<StepFEA_FeaModel.hxx>
#include<StepFEA_FeaModel3d.hxx>
#include<StepFEA_FeaModelDefinition.hxx>
#include<StepFEA_FeaMoistureAbsorption.hxx>
#include<StepFEA_FeaParametricPoint.hxx>
#include<StepFEA_FeaRepresentationItem.hxx>
#include<StepFEA_FeaSecantCoefficientOfLinearThermalExpansion.hxx>
#include<StepFEA_FeaShellBendingStiffness.hxx>
#include<StepFEA_FeaShellMembraneBendingCouplingStiffness.hxx>
#include<StepFEA_FeaShellMembraneStiffness.hxx>
#include<StepFEA_FeaShellShearStiffness.hxx>
#include<StepFEA_FeaSurfaceSectionGeometricRelationship.hxx>
#include<StepFEA_FeaTangentialCoefficientOfLinearThermalExpansion.hxx>
#include<StepFEA_FreedomAndCoefficient.hxx>
#include<StepFEA_FreedomsList.hxx>
#include<StepFEA_GeometricNode.hxx>
#include<StepFEA_HArray1OfCurveElementEndOffset.hxx>
#include<StepFEA_HArray1OfCurveElementEndRelease.hxx>
#include<StepFEA_HArray1OfCurveElementInterval.hxx>
#include<StepFEA_HArray1OfDegreeOfFreedom.hxx>
#include<StepFEA_HArray1OfElementRepresentation.hxx>
#include<StepFEA_HArray1OfNodeRepresentation.hxx>
#include<StepFEA_HSequenceOfCurve3dElementProperty.hxx>
#include<StepFEA_HSequenceOfElementGeometricRelationship.hxx>
#include<StepFEA_HSequenceOfElementRepresentation.hxx>
#include<StepFEA_HSequenceOfNodeRepresentation.hxx>
#include<StepFEA_Node.hxx>
#include<StepFEA_NodeDefinition.hxx>
#include<StepFEA_NodeGroup.hxx>
#include<StepFEA_NodeRepresentation.hxx>
#include<StepFEA_NodeSet.hxx>
#include<StepFEA_NodeWithSolutionCoordinateSystem.hxx>
#include<StepFEA_NodeWithVector.hxx>
#include<StepFEA_ParametricCurve3dElementCoordinateDirection.hxx>
#include<StepFEA_ParametricCurve3dElementCoordinateSystem.hxx>
#include<StepFEA_ParametricSurface3dElementCoordinateSystem.hxx>
#include<StepFEA_SequenceNodeOfSequenceOfCurve3dElementProperty.hxx>
#include<StepFEA_SequenceNodeOfSequenceOfElementGeometricRelationship.hxx>
#include<StepFEA_SequenceNodeOfSequenceOfElementRepresentation.hxx>
#include<StepFEA_SequenceNodeOfSequenceOfNodeRepresentation.hxx>
#include<StepFEA_SequenceOfCurve3dElementProperty.hxx>
#include<StepFEA_SequenceOfElementGeometricRelationship.hxx>
#include<StepFEA_SequenceOfElementRepresentation.hxx>
#include<StepFEA_SequenceOfNodeRepresentation.hxx>
#include<StepFEA_Surface3dElementRepresentation.hxx>
#include<StepFEA_SymmetricTensor22d.hxx>
#include<StepFEA_SymmetricTensor23d.hxx>
#include<StepFEA_SymmetricTensor23dMember.hxx>
#include<StepFEA_SymmetricTensor42d.hxx>
#include<StepFEA_SymmetricTensor43d.hxx>
#include<StepFEA_SymmetricTensor43dMember.hxx>
#include<StepFEA_UnspecifiedValue.hxx>
#include<StepFEA_Volume3dElementRepresentation.hxx>

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
#include<Interface_SequenceOfCheck.hxx>
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
#include<Handle_StepElement_AnalysisItemWithinRepresentation.hxx>
#include<StepElement_ElementAspect.hxx>
#include<Handle_StepElement_SurfaceSection.hxx>
#include<Handle_TColStd_HArray1OfReal.hxx>
#include<Handle_StepElement_HArray1OfCurveElementEndReleasePacket.hxx>
#include<Handle_StepRepr_HArray1OfRepresentationItem.hxx>
#include<Handle_StepRepr_RepresentationContext.hxx>
#include<Handle_StepData_SelectMember.hxx>
#include<Handle_StepBasic_EulerAngles.hxx>
#include<Handle_StepElement_HArray1OfCurveElementSectionDefinition.hxx>
#include<Handle_StepElement_Curve3dElementDescriptor.hxx>
#include<Handle_StepElement_ElementMaterial.hxx>
#include<Handle_StepElement_Surface3dElementDescriptor.hxx>
#include<Handle_StepElement_SurfaceElementProperty.hxx>
#include<Handle_StepGeom_Direction.hxx>
#include<Handle_StepElement_CurveElementSectionDefinition.hxx>
#include<Handle_StepElement_Volume3dElementDescriptor.hxx>
#include<StepElement_MeasureOrUnspecifiedValue.hxx>
#include<Handle_StepGeom_CartesianPoint.hxx>
#include<Handle_TColStd_HArray1OfAsciiString.hxx>
%}

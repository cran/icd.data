# Copyright (C) 2014 - 2018  Jack O. Wasey
#
# This file is part of icd.data.
#
# icd.data is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# icd.data is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with icd.data. If not, see <http:#www.gnu.org/licenses/>.

#' ICD-9 chapters
#'
#' \code{icd9_chapters}, \code{icd9_chapters_sub} and \code{icd9_majors} contain
#' mappings from the higher level descriptions of ICD-9 codes to the ranges of
#' ICD-9 codes they describe. Helpful in summarizing codes or grouping for
#' human-readable output. These can easily be converted to a co-morbidity
#' mapping, as shown in the vignette.
#'
#' \itemize{ \item 001-139 Infectious And Parasitic Diseases \item 140-239
#' Neoplasms \item 240-279 Endocrine, Nutritional And Metabolic Diseases, And
#' Immunity Disorders \item 280-289 Diseases Of The Blood And Blood-Forming
#' Organs \item 290-319 Mental Disorders \item 320-389 Diseases Of The Nervous
#' System And Sense Organs \item 390-459 Diseases Of The Circulatory System
#' \item 460-519 Diseases Of The Respiratory System \item 520-579 Diseases Of
#' The Digestive System \item 580-629 Diseases Of The Genitourinary System \item
#' 630-679 Complications Of Pregnancy, Childbirth, And The Puerperium \item
#' 680-709 Diseases Of The Skin And Subcutaneous Tissue \item 710-739 Diseases
#' Of The Musculoskeletal System And Connective Tissue \item 740-759 Congenital
#' Anomalies \item 760-779 Certain Conditions Originating In The Perinatal
#' Period \item 780-799 Symptoms, Signs, And Ill-Defined Conditions \item
#' 800-999 Injury And Poisoning \item V01-V91 Supplementary Classification Of
#' Factors Influencing Health Status And Contact With Health Services \item
#' E000-E999 Supplementary Classification Of External Causes Of Injury And
#' Poisoning }
#' @keywords datasets list category
#' @docType data
#' @source
#' \url{http://www.cms.gov/Medicare/Coding/ICD9ProviderDiagnosticCodes/codes.html}
#'
#' @details Format:  list with chapter/sub-chapter or major names stored in list names,
#'   each with two element named character vector with start and end codes.
#' @name icd9_chapters
#' @aliases icd9_sub_chapters
#'   icd9_majors
NULL

#' ICD-10 chapters
#'
#' The WHO ICD-10 scheme chapters. The chapter level is the highest in the
#' hierarchy, each chapter containing sets of codes which span multiple
#' three-digit 'major' codes, and in some cases also span codes across two
#' alphabetic initial characters. E.g. Chapter I spans A00 to B99.
#'
#' 2017 ICD-10-CM does not have any U codes (codes for special purposes).
#' U00-U49 - Provisional assignment of new diseases of uncertain etiology or
#' emergency use U82-U85 - Resistance to antimicrobial and anti-neoplastic drugs
#' @source http://apps.who.int/classifications/icd10/browse/2016/en
#' @details Format:  list with chapter names stored in list names, each with two element
#'   named character vector with start and end codes.
#' @name icd10_chapters
NULL

#' ICD-10 sub-chapters
#'
#' The WHO ICD-10 scheme sub-chapters. N.b. there may be WHO vs CM differences:
#' please file bug if noted. In the \code{XML} definition of ICD-10-CM there are
#' some intermediate hierarchical levels, e.g. for neoplasms. Sub-chapter here
#' is defined as the lowest-level grouping of three-digit codes, e.g. C00-C14
#' "Malignant neoplasms of lip, oral cavity and pharynx", not C00-C96 "Malignant
#' neoplasms" which itself is a subset of the chapter C00-D49 "Neoplasms"
#' @source http://apps.who.int/classifications/icd10/browse/2016/en
#' @details Format:  list with sub-chapter or major names stored in list names, each with
#'   two element named character vector with start and end codes.
#' @name icd10_sub_chapters
NULL

#' Latest ICD-9-CM diagnosis codes, in flat \code{data.frame} format
#'
#' Short-form ICD-9 codes with short and long descriptions, and description of
#' each hierarchy level containing each code.
#' @docType data
#' @keywords datasets
#' @details Format:  data frame
#' @source
#' \url{http://wonder.cdc.gov/wonder/sci_data/codes/icd9/type_txt/icd9cm.asp}
#' @source Rich text descriptions here:
#'   \url{http://www.cdc.gov/nchs/icd/icd9cm.htm}
#'   \url{http://www.cms.gov/Medicare/Coding/ICD9ProviderDiagnosticCodes/codes.html}
#'    This page has versions 23 to 32 (2005 to 2014). At present, only the 2014
#'   data is included in this package.
#' @source
#' \url{http://wonder.cdc.gov/wonder/sci_data/codes/icd9/type_txt/icd9abb.asp}
#' @source
#' \url{http://wonder.cdc.gov/wonder/sci_data/codes/icd9/type_txt/icd9cm.asp}
#' @source
#' \url{http://wonder.cdc.gov/wonder/sci_data/codes/icd9/type_txt/icdcm.asp}
#' @source
#' \url{http://wonder.cdc.gov/wonder/sci_data/codes/icd9/type_txt/icd9abb.asp}
#' @name icd9cm_hierarchy
NULL

#' ICD-10-CM
#'
#' The public domain modified ICD-10 classification as published in the public
#' domain by the US CDC. Currently this has a slightly different structure to
#' \code{icd9cm_hierarchy} because the published data helpfully has a
#' \emph{leaf} flag indicating whether a code is a \emph{billable} leaf node, or
#' a code higher in the hierarchy which nevertheless will have a description.
#'
#' There are annual revisions to this data. Currently, the 2016 edition is
#' included.
#' @name icd10cm2016
#' @source \url{http://www.cdc.gov/nchs/icd/icd10cm.htm}
#' @docType data
#' @keywords datasets
#' @details Format:  data frame, with columns for code, leaf status (0 or 1), short and
#'   long descriptions.
NULL

#' ICD-10-CM Procedure Codes
#'
#' ICD-10-PCS is the annually-updated set of procedure codes designed by 3M for
#' the US CMS. There is no directory of WHO ICD procedure codes.
#' @details Format:  A named list of data frames. The elements of the list are named by
#'   the year, e.g., \code{"2018"}. Each data frame contains two character
#'   columns, the first, named \code{code} is the procedure code; the second,
#'   named \code{desc}, has the description.
#' @name icd10_pcs
#' @aliases icd10_pcs_2014 icd10_pcs_2015 icd10_pcs_2016 icd10_pcs_2017
#'   icd10_pcs_2018
#' @seealso
#' \url{https://www.cms.gov/Medicare/Coding/ICD10/downloads/pcs_refman.pdf}
#' @docType data
#' @keywords datasets
NULL

#' AHRQ ICD-10-PCS categories
#'
#' The AHRQ has categorized each of the ICD-10-PCS (Procedure Codes) into one of
#' four groups: minor diagnostic, minor therapeutic, major diagnostic or major
#' therapeutic. This mapping can be used to get the type(s) of procedure(s)
#' performed on a patient from a \code{data.frame} of patients and associated
#' procedure codes in 'long' format. See the ICD-10 vignette for an example.
#' @name icd10_map_ahrq_pcs
#' @seealso \url{https://www.hcup-us.ahrq.gov/toolssoftware/procedureicd10/procedure_icd10.jsp}
#' @docType data
#' @keywords datasets
NULL


#' list of annual versions of billable leaf nodes of ICD-9-CM
#'
#' These are derived from the CMS published updates, with versions 23 to 32
#' currently available going back to 2004/5. The source files back to version 27
#' have short and long descriptions. The short descriptions are in ASCII with no
#' special characters, whereas the long descriptions contain accented characters
#' which seem to be interpreted as Unicode, \code{latin-1} or \code{cp1252}.
#' This all done during package creation, but can be repeated by package users,
#' including pulling the data from the web pages directly. Despite my best
#' efforts, current locale can give different results, but this packaged data is
#' correct, with some \code{UTF-8} encoded strings.
#' @docType data
#' @keywords datasets
#' @details Format:  list of data frames. Each list item is named by the version as a
#'   string, e.g. "32". The constituent data frames have columns \code{icd9},
#'   \code{shortDesc}, and \code{longDesc}.
#' @source
#' \url{http://www.cms.gov/Medicare/Coding/ICD9ProviderDiagnosticCodes/codes.html}
#'
#' @name icd9cm_billable
#' @aliases icd9Billable
NULL

#' Hospital discharge data from Vermont
#'
#' Anonymous data from public Vermont source for 2013
#'
#' Conditions of Release Release of public use data is subject to the following
#' conditions, which the requestor agrees to upon accepting copies of the data:
#'
#' 1. The data may not be used in any manner that attempts to or does identify,
#' directly or indirectly, any individual patient or physician.
#'
#' 2. The requestor agrees to incorporate the following, or a substantially
#' similar, disclaimer in all reports or publications that include public use
#' data: "Hospital discharge data for use in this study were supplied by the
#' Vermont Association of Hospitals and Health Systems-Network Services
#' Organization (VAHHS-NSO) and the Vermont Department of Banking, Insurance,
#' Securities and Health Care Administration (BISHCA). All analyses,
#' interpretations or conclusions based on these data are solely that of [the
#' requestor]. VAHHS-NSO and BISHCA disclaim responsibility for any such
#' analyses, interpretations or conclusions. In addition, as the data have been
#' edited and processed by VAHHS-NSO, BISHCA assumes no responsibility for
#' errors in the data due to coding or processing"
#' @source
#' \url{http://www.healthvermont.gov/health-statistics-vital-records/health-care-systems-reporting/hospital-discharge-data}
#' @details Format:  CSV original, minimally processed into R data frame.
#' @keywords datasets
#' @author Vermont Division of Health Care Administration
#' @docType data
#' @name vermont_dx
NULL

#' United States Transuranium & Uranium Registries
#'
#' an ICD-10 data set (not ICD-10-CM) with mortality from the United States
#' Transuranium & Uranium Registries, published in the public domain.
#' @name uranium_pathology
#' @source \url{https://ustur.wsu.edu/about-us/}
#' @docType data
#' @keywords datasets
NULL

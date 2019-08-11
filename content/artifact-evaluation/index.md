---
title: Guidelines on Artifact Evaluation
summary: Guidelines on Artifact Evaluation
date: "2019-08-10T00:00:00Z"

reading_time: false  # Show estimated reading time?
share: false  # Show social sharing links?
profile: false  # Show author profile?
comments: false  # Show comments?

# Optional header image (relative to `static/img/` folder).
header:
  caption: ""
  image: ""
---

*If you have questions, you can email: [artifactevaluationchair@isfpga.org](artifactevaluationchair@isfpga.org)*

The goal of this initiative is to promote reproducibility of published results by highlighting papers supported with open-source code. These papers are identified by badges promoted by ACM.  More details are provided below.  
We are asking all authors to indicate whether or not there are artifacts associated with their paper(s).  Artifacts are not required.  
 
## Artifact Form Requirements
### What is the Artifact Form? 
The Artifact Form  is  part of the information  you must fill out when you submit  your paper to FPGA 2020.  The form describes the presence or absence of computational artifacts (software, hardware or data) that supports the research presented in the paper.  

### Is the Artifact Form required in order to submit to FPGA 2020?
As an author, you must answer the question whether or not you have artifacts when you submit your paper.  If you have artifacts then please complete the remaining questions. Note that you do not need to have artifacts.   

### Do I need to make my software open source in order to complete the Artifact Form?
No. You are not asked to make any changes to your computing environment or design process  in order to complete the form. The form is meant to describe the computing environment in which you produced your results and any artifacts you wish to share.  Any author-created software does not need to be open source, unless you wish to be eligible for an ACM Artifacts badge (see below).


## Review Process
### Who will review my artifact form?
The reviewers of your paper will not have access to the Artifact form.  If your submitted paper is accepted to FPGA 2020, then the Artifact form will be reviewed.  The  Artifact Evaluation  Committee (AEC) will review the appendices, and will check that artifacts are indeed available at the URLs provided. They will also help authors improve their forms, in a double-open arrangement.  If authors select this option (by answering yes to question 12), their paper may be evaluated for the Artifacts Available -- Reusable or Artifacts Available Functional badges.    Some papers will be evaluated for the ACM “Results Replicated” badge.  If your paper is chosen, then the artifact evaluation committee will be in contact with the authors if they have questions regarding your artifacts.   

### How will review of appendices interact with the double-blind review process?
Artifact review will not take place until after decisions on papers have been made.  Reviewers will not have access to the artifact form.  Authors should not include links to their repositories in their paper.  The paper review process is double blind.  The artifact review process is not.  .  


## Impact of Artifact Form (AF)
### What's the impact of an Artifact Form on scientific reproducibility?
Reproducibility depends on, as a first step, sharing the provenance of results with transparency, and the AF  is an instrument of documentation and transparency.  A good AF helps researchers document their results, and helps other researchers build from them.

### The paper text explains why I believe my answers are right and shows all my work. Why do I need to provide an AF?
There are many good reasons for formalizing the artifact description and evaluation process. Standard practice varies across disciplines. Labeling the evaluation as such improves our ability to review the paper and improves reader confidence in the veracity of the results.


## Artifacts
### What are "author-created" artifacts and why make the distinction?
Author created artifacts are the hardware, software, or data created by the paper's authors. Only these artifacts need be made available to facilitate reproducibility. Proprietary, closed source artifacts (e.g. commercial software and CPUs) will necessarily be part of many research studies. These proprietary artifacts should be described to the best of the author's ability but do not need to be provided.

### What about proprietary author-created artifacts?
The ideal case for reproducibility is to have all author-created artifacts publically available with a stable identifier. Papers involving proprietary, closed source author-created artifacts should indicate the availability of the artifacts and describe them as much as possible. Note that results dependent on closed source artifacts are not reproducible and are therefore ineligible for most of the ACM's artifact review badges. See [https://www.acm.org/publications/policies/artifact-review-badging](https://www.acm.org/publications/policies/artifact-review-badging).

### Are the numbers used to draw our charts a data artifact?
Not necessarily. Data artifacts are the data (input or output) required to reproduce the results, not necessarily the results themselves. For example, if your paper presents a system that generates charts from datasets then providing an input dataset would facilitate reproducibility. However, if the paper merely uses charts to elucidate results then the input data to whatever tool you used to draw those charts isn't required to reproduce the paper's results. The tool which drew the chart isn't part of the study, so the input data to that tool is not a data artifact of this work.

### Help! My data is HUGE! How do I make it publically available with a stable identifier?
Use Zenodo ([https://help.zenodo.org/](https://help.zenodo.org/)). Contact them for information on how to upload extremely large datasets. You can easily upload datasets of 50GB or less, have multiple datasets, and there is no size limit on communities.

### What's the impact of an Artifact Form on scientific reproducibility?
An artifact-evaluation effort can increase the trustworthiness of computational results. It can be particularly effective in the case of results obtained using specialized computing platforms, not available to other researchers. Leadership computing platforms, novel testbeds, and experimental computing environments are of keen interest to the FPGA community. Access to these systems is typically limited, however. Thus, most reviewers cannot independently check results, and the authors themselves may be unable to recompute their own results in the future, given the impact of irreversible changes in the environment (compilers, libraries, components, etc.). The various forms of Artifact Evaluation improve confidence that computational results from these special platforms are correct.


## ACM Artifacts Available and Artifacts Evaluated Badges
For more information, see [https://www.acm.org/publications/policies/artifact-review-badging](https://www.acm.org/publications/policies/artifact-review-badging)

The badges we will consider for FPGA2020 are *Artifacts Available, Artifacts Evaluated — Functional, Artifacts Evaluated — Reusable and Results Validated*.  

By the [ACM Badging definitions](https://www.acm.org/publications/policies/artifact-review-badging):

> Artifacts Available badge: This badge is applied to papers in which associated artifacts have been made permanently available for retrieval.

The Artifact form (new for FPGA 2020) will be used to determine eligibility for an ACM Artifacts Available badge on the basis of the answers to questions about the availability of author-created software, hardware or data products. The conditions of eligibility are:

* All author-created software artifacts are maintained in a public repository under an OSI- approved license.
* All author-created hardware artifacts are available and comply with the Open Source Hardware Definition.
* All author-created data artifacts are maintained in a public repository with a stable identifier, such as a DOI.

> Artifacts Evaluated — Functional badge: The artifacts associated with the research are found to be documented, consistent, complete, exercisable, and include appropriate evidence of verification and validation.

 
> Artifacts Evaluated — Reusable badge: The artifacts associated with the paper are of a quality that significantly exceeds minimal functionality. That is, they have all the qualities of the Artifacts Evaluated – Functional level, but, in addition, they are very carefully documented and well-structured to the extent that reuse and repurposing is facilitated. In particular, norms and standards of the research community for artifacts of this type are strictly adhered to. 


> Results Replicated badge: The main results of the paper have been obtained in a subsequent study by a person or team other than the authors, using, in part, artifacts provided by the author.

Exact replication or reproduction of results is not required, or even expected. Instead, the results must be in agreement to within a tolerance deemed acceptable for experiments of the given type. In particular, differences in the results should not change the main claims made in the paper.

It is easy to see how research articles that develop algorithms or software systems could be labeled as described above. Here, the artifacts could be implementations of algorithms or complete software systems, and replication would involve exercise of software, typically software provided by the author. However, we intend these badges to be applicable to other types of research as well. For example, artifacts associated with human-subject studies of novel human-computer interface modalities might be the collected data, as well as the scripts developed to analyze the data. "Replication" might focus on a careful inspection of the experimental protocol along with independent analysis of the collected data.

### Notes about artifacts:  
 
A design artifact can be a hardware or software design. Software could include design tools or host code.  Hardware designs can include designs intended to become ASICs, or designs that map to FPGA fabric.

Hardware artifacts should comply with the Open Source Hardware Definition.  See [https://www.oshwa.org/definition/](https://www.oshwa.org/definition/)

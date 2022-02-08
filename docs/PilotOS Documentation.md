# PilotOS Documentation

* [Overview](#Overview)
  * [1 Internet Banking System](#1-Internet-Banking-System)
    * [API Application](#API-Application)
    * [Single Page Application](#Single-Page-Application)
      * [Dynamic Diagram](#Dynamic-Diagram)
      * [Extended Docs](#Extended-Docs)
  * [2 Deployment](#2-Deployment)

---

## Overview

**Level 1: System Context diagram**

A System Context diagram is a good starting point for diagramming and documenting a software system, allowing you to step back and see the big picture. Draw a diagram showing your system as a box in the centre, surrounded by its users and the other systems that it interacts with.

Detail isn't important here as this is your zoomed out view showing a big picture of the system landscape. The focus should be on people (actors, roles, personas, etc) and software systems rather than technologies, protocols and other low-level details. It's the sort of diagram that you could show to non-technical people.

**Scope**: A single software system.

**Primary elements**: The software system in scope.
Supporting elements: People (e.g. users, actors, roles, or personas) and software systems (external dependencies) that are directly connected to the software system in scope. Typically these other software systems sit outside the scope or boundary of your own software system, and you don’t have responsibility or ownership of them.

**Intended audience**: Everybody, both technical and non-technical people, inside and outside of the software development team.

![diagram](https://www.plantuml.com/plantuml/png/0/RLBBJYf14DtFLvIiC45cu-gkL9oe2IYvGCnTaPgcW0xzc7HL2_wztJD8uEgoga-THrNViM2GQ4rnfPqoSKMm5MduJra6t0ytMhQnZan1UIVaPAYyBN4LDBeF4vjOZcvlfWQTB2RZqg0GIsejHnbza66JcOln_R-tnNpv_Z9_Newhf-hriNzT55CAx5s_gTK0Ubs11XxGxRJRm2YoU4kXbnxlGHqhy6kGBK6TK0FO9tVGV4_c7g1IFZhXOU-wc7soaEthcXF7Ip8K7Cb9e7jjwOtnUpvfC8Y73qrxq6xjWqNHtW7MFahMrk5IQG3eLc1nHz3WfwKByMLra3vb_Uh6eZR09zLvYg5RKydxHAlWsQy5geFQejiGqFd0VuosZJJ1P32WfLyopSG7Oa1ZlbUcKgDrde4_avtI3ywIIK37g38iLIGg-oZ-akckrcrsmSIfdRivQNVF6RaL7pFaXHu1xKIxZmj0wtWodvwZx3dvNKBdh_G5)

## 1 Internet Banking System

[Overview](#PilotOS-Documentation)

**Level 2: Container diagram**

Once you understand how your system fits in to the overall IT environment, a really useful next step is to zoom-in to the system boundary with a Container diagram. A "container" is something like a server-side web application, single-page application, desktop application, mobile app, database schema, file system, etc. Essentially, a container is a separately runnable/deployable unit (e.g. a separate process space) that executes code or stores data.

The Container diagram shows the high-level shape of the software architecture and how responsibilities are distributed across it. It also shows the major technology choices and how the containers communicate with one another. It's a simple, high-level technology focussed diagram that is useful for software developers and support/operations staff alike.

**Scope**: A single software system.

**Primary elements**: Containers within the software system in scope.
Supporting elements: People and software systems directly connected to the containers.

**Intended audience**: Technical people inside and outside of the software development team; including software architects, developers and operations/support staff.

**Notes**: This diagram says nothing about deployment scenarios, clustering, replication, failover, etc.

![diagram](https://www.plantuml.com/plantuml/png/0/fPJ1Rjim38RlVWekXo41qkIoqqvjqs1jqRH1dQpTAQ1b9T4cIuP49os6lVieENQTjjiEoy61g5_aHuhKgITqL1Kw-Q2Cq5KkOKjK-i_ZiSFzQADeMsMLbqvOGzBGIDXYZBbJQ7QwAglnvDF9NAEXvUnch96a9pQj9gn6PQGRbS5tSdFsxMwvM3rSBIvNDzClqzkB_Y19vj9vQ_fb9eRGgnUeuHpD3sKsCAaysKAw7c-UWJYimAw1jX8oLWrXptnGDYU33L08MndoezuWIPyzoM8rVQA-zEncUbAWqk2ZEVXTi2V5YRbmVAQ4izwk2QPFOejc8q5s3xpoM6J1vOpJN3iiPCkTjjvJiavwGAqRQi66Y1c4VD2w0abP0vZPYjeasN6JnX38eV4eWenNaaI7uvmrERhdleemLp4LIGrBRm0_4-1VUn_zFRBkGMPmLfPQYHWzi7x77GAQ7DBI1RZPrqamNqYjTWmKwRbNI0auj49KKrj0ZjeavlcZ9PJ85SINC87x6CQNWIQjvVCWVuVA2wVAEXhVIQKnTiJSsPtA3zLzbs9TcLWqr8gUWUnBTM6dC9nH3lPSYSpPFNVuMxmYqCrifdG42s4ViK2kpp41Q5KeaZduAlDCOEa_Y8ewtk4lbpibv5kqF0kNWuGPUXbexgN6sZSqPaZ5LXROwSGmoE3aHdbkgjXtdHuSmXRzbhF0YaaC7Qu1X9DvMAAksr9w3zfkNdhnc0nB5GPsVlNd3gDkXxLb_4UvGeKGhjExs_7bOZ47ZX22n-YSV1qtJdagJUuFe-jZzhF5_C3PAklfNNeP5O_yUWMlwMjPhFEzH7Ru4VQERvb7mOOZrnVdauuwp5NTpit8T3RZHbsO9cARI3TayNVPhoG9glXUnZbkL8sWtQr9udR7MhmoXchLZ-zHoKA2W-IKJU7j_Wq0)

## API Application

[Overview](#PilotOS-Documentation)

**Level 3: Component diagram**

Next you can zoom in and decompose each container further to identify the major structural building blocks and their interactions.

The Component diagram shows how a container is made up of a number of "components", what each of those components are, their responsibilities and the technology/implementation details.

**Scope**: A single container.

**Primary elements**: Components within the container in scope.
Supporting elements: Containers (within the software system in scope) plus people and software systems directly connected to the components.

**Intended audience**: Software architects and developers.

![diagram](https://www.plantuml.com/plantuml/png/0/fLHDRnen4BtpAwOSAf1ekFJKKu2aJQ9ye03zEA5Pxx2uzSVAza9HrV_UiPUmksbKHUfUrXwFtpo_UVQv3-X2fLNlZJH2LJd1DeJIVnYF7UxF2XcsLLPvSiAQG2QS2Ql7c3k9PgUgiXhFth-RApHXTNSxLXZ81mwjPrQNriJyCcBtRYVV7bRBzPVhvTNwzlBJvVt5ODZhpHWJfI4ty2MEeB-Gfb04Som89cMffC0WhUdpqdVSeHTEbW7GvE08HOZnkRCxcPC7L0h2ba0oJMSeG8Rc1-F1fZ8Yeg2IuG31WgXyi9gSXvt4k4Sws5C6cRDxFkXPVzWYfYElEvj9bIZ5abzHevEcMnsKr39G3hxAF5UtuJ_OwBhUyPVJJWhgqiephdw10JFq59ayai8Q5vx2i11RqXXN5y4wPXdxoD8LqWUNifdVnZgTnYFOej_o2R1Y5YOSnGVXA8zJL7u4A0Hv3yeMFA4W8gl5mGVIwykVOQ0p7-LYZXk7cc1wF7MTqc8IksKtIIB1WPCyBJw0cQr2eqygRYiJUCJqZSSaPCEZaMSzvRmStM60fUIYa_brnqz3-DK3_auk7NXPc6J0mi2rWOZah5Ba8kUxppDuP6CtuHYTACL-IPhwsCW8mVpZyCNE-rg3uRFApQ7wa-CG5fLcYnrUHUDamSP8Uxwqx4ZFA9PHQftPLf79ISI_Y7WIbMDJHXcEmsOrjQvqyHnJmgxtkvPsqOZiegI8AUgcZa1iiPwKwFtUkhpfMvS6MsY30dFwXv7WOyfuWTG4wit04jLzq2UCRYEIOs9flZd7zhSKM7bwKYYkDqrgqtkMr6nFj_EHC8UtiESGiHgHtSt5TDRQqCAgBqu2Z2yClwLNo-LymSc_Uxq47X_8eqkVqcuM3_Udl5DIor0l9gPC_Geq_GgmSp9vVE3_0000)

## Single Page Application

[Overview](#PilotOS-Documentation)

**Level 3: Component diagram**

Next you can zoom in and decompose each container further to identify the major structural building blocks and their interactions.

The Component diagram shows how a container is made up of a number of "components", what each of those components are, their responsibilities and the technology/implementation details.

**Scope**: A single container.

**Primary elements**: Components within the container in scope.
Supporting elements: Containers (within the software system in scope) plus people and software systems directly connected to the components.

**Intended audience**: Software architects and developers.

> Example of included local image

![](2020-01-10-16-21-41.png)

![diagram](https://www.plantuml.com/plantuml/png/0/TLB1Rjim3BtxAxYS4c2DBpjjbsPkiNH8MoDnDkmKC3PhgrCaGPAJ3SF-VQISfkcwvU18vEFZUwGkGqGV-vtEtYXJwxuXw69quNsUUpnCMnMxVji7yhKraKoSrdQNO-CLchtkNPyNxovAZIQkRnUvnaWXScXJs9spHl1EkBF5xDlzkjfylQdccyNrf-kxg_4aomhcH6N8Zz6fjp2QbJSmSqwh6gEoPiIXHzmZe6bWvRmoBTn-AIHyHLhjoGU87G5RYAg6eyA4bh3YgpSKOOlckzG6_cW2Xoq1FhUPZiwbR3xQtZJeVuw3G-wq6efAAJhNDe5V6V3lv7JiRHyPp3NBuIH2buHr14cHb_kSrMdo4BGIhK7nm8-5BECbOOZMavZ5YB2Ioy3Oz3_aKB77cd4UDTZj8t6Vpkf6d8hzCuTfGlIANzjM6IPQo3yyMBzxLbne3E6fImAckRtYSDu-A2qgo-6K9lKVdZJvGqUUaaAcRQdXFO4yCAZHm5xH8IsG6iLsLCWPpGWHTvnxzZlBbgI7zGplPXqezVYykh_BvrLLhcIb0ZfQV9fa0au-fDHfNVzAdcpzdSmkoJJofFy0)

## Dynamic Diagram

[Overview](#PilotOS-Documentation)

**Dynamic diagram**

A simple dynamic diagram can be useful when you want to show how elements in a static model collaborate at runtime to implement a user story, use case, feature, etc. This dynamic diagram is based upon a UML communication diagram (previously known as a "UML collaboration diagram"). It is similar to a UML sequence diagram although it allows a free-form arrangement of diagram elements with numbered interactions to indicate ordering.

**Scope**: An enterprise, software system or container.

**Primary and supporting elements**: Depends on the diagram scope; enterprise (see System Landscape diagram), software system (see System Context or Container diagrams), container (see Component diagram).

**Intended audience**: Technical and non-technical people, inside and outside of the software development team.

![diagram](https://www.plantuml.com/plantuml/png/0/NLF1Rjim3BtdAxYSag6BBpiD6DR4EQp3kWPrksj1ouojJPOCYaeG3FltKKww9FM94lqU7n-fsoZ8adetUMUzSQaXw4I6-Aae6FUBragNwXI9JV12NXOcz0KsRD7lN1fIKNxyi77evVd-U-5GA8fUlQmF7djh5aDcdfIAHUk9Pt706vXMrhUEO8CjmN8Od3KeDlYffdxX3gDXEmYWRs3fs-IGSsR3OMSRYe3EWNG4LWMn9u4Q_MzbX6to9lEWit802M1IbD0JHzXPL8mbXZtLK7FOQqkBwVmiRLtFcbhBh56mnaYvv0EZKPslLr2PZdhCcKe2gvHi332rDWgFBQYeRU3-67SOEse0awhrSceI35EJZ-ZY3Q0n52EuqEg1n5n9Ubc5v1lamwmsMdEvkRjoQ_vd0lgLeH-2LyPPjAstVlItzN3d8JDnS8v60wk1iqltFqjur36zoIwTKrF6ZcBsBfDfDpcyCdjrChiwHA5UvRxHG2Qnsf_hdS9pzaB5Yj1VJVLwU4nvbvfN8HcHEpCT-ZOV1enn7xWvk_PtCdaaTromin6fxgt4Iy-LCjVzLZtyABu-FMqgnOx04-QYWL8tBOADo_C0gPdD8Nj_nFp_TroTI8wCm7lOSkXFJkuxOXfZVH04d-7BM7szAfLZSak-oI_a7m00)

## Extended Docs

[Overview](#PilotOS-Documentation)

Multiple markdowns can be ordered using `<name>.1.md, <name>.2.md .. <name>.<n>.md`

Feel free to add any additional details necesary.

![diagram](https://www.plantuml.com/plantuml/png/0/TOxBQiCm44NNcQ-uq4LNCMteiekGjCj08LymjQT6H1gPaGm9IVwzjcFw4AqMGioSUu_MARFbFdYwnxxpBiDfZdX2nwqa6c-iZYjA1wST6uTfiMDhdUBnePY_7hEOijz67msjyQa0Dj4QiTlwtNDz8AezfuGD9zcEBoBb8AdZMg2IgwOFuOIxb-dWJ8lg2yNpPRd4crYAIekTI7RQ8lwObJHcYEXQUZvY7DhnxQnk9PXoSo7mZ_rNy8-V3BeYEEAzzacQMKHhqI7lFm40)

![diagram](https://www.plantuml.com/plantuml/png/0/POzH2iCW38RVSufSe1SeHQhs18EnPz4yo3Rjr0vw-oLsiC9U4iZ_vykVkJPNslPymCez-hYwrF1QgG18nK6X7d79jrpku7oBRzS8DO0MoOmuJUWByV12hurgGwL-FWDWn6V_4HOi3WT2X2KdWi3x9U-ioTfn-ekr_KPWondUGqXEuNV0EU9CAV1h7m00)

## 2 Deployment

[Overview](#PilotOS-Documentation)

**Deployment diagram**

A deployment diagram allows you to illustrate how containers in the static model are mapped to infrastructure. This deployment diagram is based upon a UML deployment diagram, although simplified slightly to show the mapping between containers and deployment nodes. A deployment node is something like physical infrastructure (e.g. a physical server or device), virtualised infrastructure (e.g. IaaS, PaaS, a virtual machine), containerised infrastructure (e.g. a Docker container), an execution environment (e.g. a database server, Java EE web/application server, Microsoft IIS), etc. Deployment nodes can be nested.

**Scope**: A single software system.

**Primary elements**: Deployment nodes and containers within the software system in scope.

**Intended audience**: Technical people inside and outside of the software development team; including software architects, developers and operations/support staff.

![diagram](https://www.plantuml.com/plantuml/png/0/rLPRJnf157xdLvpoKZK8IanZ-YI2LGm8SR6sIHDoTcQ0gRCpcvbPr3R-zvxP1Rc8YUXJUTZi7CvtBj-vp9uuZzPdYIfzafgfZ0kOU9-whxMQnVlgMFf95cTEM6Qq5zfNcKbgoAr4FLLPcjMQH_jzXThVT3irXLuuJw9XIwJAF2O1a0RZfKxZP-zcCBnj3ow6dRFpiwlMpcwfj50RNXakTbB5Ab0-bMCuHNq7T2oldO6ZHs244BQy-xS4z5ktmZM1OZcE2REFgTpRs_lb7uw3gPiuqpw3mo_LWoFe3AAvYKrcC4Ks4GHgv2ymC0b3NruNm77rOTbC-3M9B9HQM38Y0w3VXaQQAadwqkXWunAd2AWvHAcLUWpTxyqWxbipbLmuQ8SCjV1vva5Xb6aMmAYaVuIf93HSHhshsiLWq8-0N5JBkyzHF9KMp_N4PjJm-E1mYQXmt9OYOv6fG54lVu5zw5kPe7qiBsI7TVOgFQruXyUasgAYnkX4W5qBXKMUC1T3H7Gd6FwDlB74JkX8i68idRUvDaWzCZR9toimGJSH733p4ufrnZemAtWued8LGCQ4Sw3Cc0x2i-t9gw-ILtyVUVLbzY91OyQtvA_-dn4OBnDtB-9YF8_UDvxr3yud-IV0hOZVE9yjeUHKM0T43D3k96vWjXfpxI1-CRgE7bJ95CS2SE5c4sDFBvTYOaA8pSnvamZxsG4999dZOYgPAF9DwTpkHM0iD3ItHl9voejK2nYfTmiyeGBu1zB0IhsoV12KJAId3d1Px2WJCzgSsUfIyWROB4oNRoZ2IBiQRqXwGv9qhQIhMGP95hPyY5ZI_UFCoCEjrDpSkn1GaNM2h1UzTXF4bdI5dLNuj3W5W-V6X8eq9vQyLQ1h_aYb4Bv9AqPcfLqM_BaKm_mKjUo7McvecOXPcHQjqD3ZJA5T9LQfZt59_GgphERjapSD3VrpWOixfujtv33SF8oyKiEQ4CblPtHnOn0wWFAijaBa8rEGiPW6a-V45kLR2dI6ovtaw_vQ87Sm8kvpekujjThStMNhjBaAgByT4QpF0KLfI2l_OY1L-juu4PhJvyW_)
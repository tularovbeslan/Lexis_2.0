# Lexis_2.0
SOA/Coordinator/MVP
**Лидогенерация** - тактика, направленная на поиск потенциальных клиентов. 
Генерация лидов в Skyeng происходит через `запись на бесплатный урок`  для реализации данной функциональности используется модуль  **LeadGeneration** в котором находятся сабмодули **`LG`**, **`BookIntroLesson`** так же используется **`SkyengStartIntroLesson`** который находится в основном проекте Skyeng 



| LG | BookIntroLesson | SkyengStartIntroLesson |
|-|-|-|
| ![enter image description here](https://lh3.googleusercontent.com/gvRjL8aZK-MpEX_-5v_xbe8MAm6trQvLOmXcMTXBH4loZesVH0I3nBQv_7hGBmmSFUGDV6NilelS=s300 "SELGViewController") |![enter image description here](https://lh3.googleusercontent.com/mkmbYCEzEXvapT32FxN99p4evucdmwBEe0MTVr-CyD5m44D2uJjWS0ONFTZDsgKjvxcZIezfSOoG=s300 "BookIntroLesson") | ![enter image description here](https://lh3.googleusercontent.com/-LN1YH7_vWRYc9XQOqVW1umlhGcUGULHQcYAHPNSZrarOMDawNEbKXZx6MGiP1O2SVfIBLBdxWks=s300 "SkyengStartIntroLesson")
| `SELGViewController` | `BookIntroLesson` | `SkyengStartIntroLesson` |

> ### Лидогенерация запускается из: профиля, фида, баннера и попапа 

| Profile | Feed | Banner | Popup
|-|-|-|-|
| ![enter image description here](https://lh3.googleusercontent.com/tY0MZnJWGkb66BbKU8W3yo4ds2AS5fs5M0N5jksZtrUKFmJT9XTSxv0Eu8_lnCr0kJTrFTXMypHK=s250 "profile") | ![enter image description here](https://lh3.googleusercontent.com/zUUGDXtICVtJCLOllyvqmETo5_XJUXYSN_I1pfLdctZZOLZ0MN-PAYTS57-3DNAroPm-PSZ1ojRd=s250 "feed") | ![enter image description here](https://lh3.googleusercontent.com/gYFmgJgq1qSRCFGxusDSPV_GxXYg_7vywJWTYK0nbJmkZoCeYd0o4J1CosUNqYSLZlz6Jbzv4jB-=s250 "SELBannerCell") | ![enter image description here](https://lh3.googleusercontent.com/hLcXaT6U3cEdsmxE8wcs6LmpqLWlJCW9iOtVR0gYqEjjkEPjkNZbxNORapb8Z19NWDQKvHmT2chQ=s300 "popup") |
| `StatusIntroLessonButtonCell` | `WelcomeSectionCell` | `SELBannerCell` | `SETrialMessageViewController` |

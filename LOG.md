# MustDo LOG
> 활동 기록을 목적이 목적인 파일

### 활동 기록
- 2021.12.20
    - WWDC: SwiftUI Essentials 학습 (2019)
        - navigationView, customView 등 전반적인 SwiftUI 동작성에 대한 요약 영상이라고 보면 좋을 듯
    - 프로젝트 초기 설정
        - 최대한 환경을 비슷하게 맞추기 위해 target은 13.0에 UIKit을 base로 잡았음. (storyboard 제거)
        - UIKit이랑 같이 써야하기 때문에 방식에 대한 학습이 필요하다고 느낌. [Interfacing with UIKit](https://developer.apple.com/tutorials/swiftui/interfacing-with-uikit)
- 2021.12.21
    - Interfacing with UIKit 연습
        - 원하는 내용이 있다기보단 pager에 관한 연습이 더 많은 느낌이라 수행하지 않음. 당장은 필요없는 느낌?
    - UIHostingController
        - 궁극적으로 원하는 것은 이거 였다는 걸 깨달음.
        - SwiftUI의 View를 주입해서 UIViewController로 생성해주는 역할.
        - UIViewController를 subClass했다고 함.
        - 공식문서 학습이 필요함. 대충 봤을 땐 WrappedVC 느낌이긴한데, 아직 잘 모르겠음.
- 2021.12.22
    - 이사 업무 처리로 인한 휴무

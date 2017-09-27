.class Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;
.super Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;
.source "SemTimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;,
        Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$2;,
        Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;,
        Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;,
        Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private SEM_DEBUG:Z

.field private final mAmPmMarginInside:Landroid/view/View;

.field private final mAmPmMarginOutside:Landroid/view/View;

.field private final mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDefaultHeight:I

.field private final mDefaultWidth:I

.field private final mDivider:Landroid/widget/TextView;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mEmpty1:Landroid/view/View;

.field private final mEmpty2:Landroid/view/View;

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsAmPmAutoFlipped:Z

.field private mIsEditTextMode:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->SEM_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)C
    .locals 1

    iget-char v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourFormat:C

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;Lcom/samsung/android/widget/SemNumberPicker;Z)V
    .locals 0
    .param p1, "picker"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "mode"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateModeState(Lcom/samsung/android/widget/SemNumberPicker;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->validCheck()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "delegator"    # Lcom/samsung/android/widget/SemTimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;-><init>(Lcom/samsung/android/widget/SemTimePicker;Landroid/content/Context;)V

    .line 91
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 96
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    .line 262
    new-instance v6, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$1;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    .line 735
    new-instance v6, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$2;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 850
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->SEM_DEBUG:Z

    .line 852
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/widget/EditText;

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    .line 110
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 111
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x1090118

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 114
    const v6, 0x10204c6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    .line 115
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10408e3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 116
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 117
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v7, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$3;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 144
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const v7, 0x102044b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 145
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    .line 146
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const v7, 0x2000005

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 147
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    .line 148
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 151
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204c7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    .line 152
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setDividerText()V

    .line 155
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 156
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 158
    .local v5, "smallestScreenWidthDp":I
    int-to-float v6, v5

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 157
    const/4 v8, 0x1

    invoke-static {v8, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    .line 158
    const/high16 v7, 0x3f000000    # 0.5f

    .line 157
    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDefaultWidth:I

    .line 159
    const v6, 0x1050324

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDefaultHeight:I

    .line 162
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204c8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    .line 164
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    .line 165
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 166
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 167
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 168
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setSkipValuesOnLongPressEnabled(Z)V

    .line 169
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    .line 170
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10408e4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 171
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 172
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v7, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$4;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 177
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const v7, 0x102044b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 178
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v7, 0x2000006

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 179
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    .line 180
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 181
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 182
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setNextFocusForwardId(I)V

    .line 185
    invoke-static {p2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 188
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204ca

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, "amPmView":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    .line 190
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204cc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    .line 192
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204c9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    .line 193
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const v7, 0x10204cb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    .line 194
    check-cast v1, Lcom/samsung/android/widget/SemNumberPicker;

    .end local v1    # "amPmView":Landroid/view/View;
    iput-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    .line 195
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setToggle(Z)V

    .line 196
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 197
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 198
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 199
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v7, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 200
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v7, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$5;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 215
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const v7, 0x102044b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 216
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 217
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 218
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 219
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    const v6, 0x10204c4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 224
    .local v0, "amPmParent":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 225
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 226
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 228
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 229
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 230
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 233
    .end local v0    # "amPmParent":Landroid/view/ViewGroup;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHourFormatData()V

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateHourControl()V

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 240
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setHour(I)V

    .line 241
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setMinute(I)V

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 244
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 248
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v6}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 249
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 252
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setTextWatcher()V

    .line 254
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 255
    .local v2, "conf":Landroid/content/res/Configuration;
    iget v6, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 256
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v7, "inputType=disableMobileCMKey"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 257
    iget-object v6, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v7, "inputType=disableMobileCMKey"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 107
    :cond_4
    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 708
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 709
    .local v1, "result":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 711
    .local v0, "d":Llibcore/icu/LocaleData;
    invoke-static {}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    .line 713
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 720
    :goto_0
    return-object v1

    .line 716
    :cond_0
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowAm:Ljava/lang/String;

    :goto_1
    aput-object v2, v1, v3

    .line 717
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_2

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowPm:Ljava/lang/String;

    :goto_2
    aput-object v2, v1, v4

    goto :goto_0

    .line 716
    :cond_1
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_1

    .line 717
    :cond_2
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    goto :goto_2
.end method

.method private static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "ft"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v2, 0x0

    .line 355
    .local v2, "fontType":Landroid/graphics/Typeface;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 363
    .end local v2    # "fontType":Landroid/graphics/Typeface;
    :cond_0
    :goto_0
    return-object v2

    .line 359
    .restart local v2    # "fontType":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getHourFormatData()V
    .locals 6

    .prologue
    .line 284
    iget-object v5, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 285
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "Hm"

    .line 284
    :goto_0
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 287
    .local v3, "lengthPattern":I
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 290
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 292
    .local v1, "c":C
    const/16 v4, 0x48

    if-eq v1, v4, :cond_0

    const/16 v4, 0x68

    if-ne v1, v4, :cond_3

    .line 293
    :cond_0
    iput-char v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourFormat:C

    .line 294
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v4, :cond_1

    .line 295
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 283
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 285
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "lengthPattern":I
    :cond_2
    const-string/jumbo v4, "hm"

    goto :goto_0

    .line 292
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    .restart local v3    # "lengthPattern":I
    :cond_3
    const/16 v4, 0x4b

    if-eq v1, v4, :cond_0

    const/16 v4, 0x6b

    if-eq v1, v4, :cond_0

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    .prologue
    .line 303
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    .line 304
    const-string/jumbo v2, "hm"

    .line 303
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string/jumbo v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isMeaLanguage()Z
    .locals 2

    .prologue
    .line 725
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "lo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 730
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 631
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 632
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mOnTimeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mOnTimeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v2

    .line 634
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    .line 633
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/samsung/android/widget/SemTimePicker;II)V

    .line 630
    :cond_0
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 3
    .param p1, "currentHour"    # I
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 374
    invoke-static {}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 377
    :cond_0
    return-void

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 381
    if-lt p1, v2, :cond_5

    .line 382
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    .line 383
    if-le p1, v2, :cond_2

    .line 384
    add-int/lit8 p1, p1, -0xc

    .line 392
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 395
    if-eqz p2, :cond_4

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->onTimeChanged()V

    .line 371
    :cond_4
    return-void

    .line 387
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    .line 388
    if-nez p1, :cond_2

    .line 389
    const/16 p1, 0xc

    goto :goto_0
.end method

.method private setDividerText()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 318
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v9, :cond_3

    const-string/jumbo v7, "Hm"

    .line 319
    .local v7, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v9, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v9, 0x48

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 323
    .local v2, "hourIndex":I
    if-ne v2, v11, :cond_0

    .line 324
    const/16 v9, 0x68

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 326
    :cond_0
    if-ne v2, v11, :cond_4

    .line 328
    const-string/jumbo v6, ":"

    .line 337
    .local v6, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-static {v12}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 339
    .local v1, "defaultTypeface":Landroid/graphics/Typeface;
    const-string/jumbo v9, "sec-roboto-condensed-light"

    invoke-static {v9, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 340
    .local v5, "pickerTypeface":Landroid/graphics/Typeface;
    invoke-virtual {v1, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 341
    const-string/jumbo v9, "samsung-neo-num3T"

    invoke-static {v9, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 344
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "theme_font_clock"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 345
    .local v8, "themeTypeFace":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 349
    :cond_2
    :goto_2
    const/4 v9, 0x1

    invoke-static {v5, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 350
    .local v4, "pickerBoldTypeface":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 317
    return-void

    .line 318
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "defaultTypeface":Landroid/graphics/Typeface;
    .end local v2    # "hourIndex":I
    .end local v4    # "pickerBoldTypeface":Landroid/graphics/Typeface;
    .end local v5    # "pickerTypeface":Landroid/graphics/Typeface;
    .end local v6    # "separatorText":Ljava/lang/String;
    .end local v7    # "skeleton":Ljava/lang/String;
    .end local v8    # "themeTypeFace":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "hm"

    .restart local v7    # "skeleton":Ljava/lang/String;
    goto :goto_0

    .line 330
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v2    # "hourIndex":I
    :cond_4
    const/16 v9, 0x6d

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 331
    .local v3, "minuteIndex":I
    if-ne v3, v11, :cond_5

    .line 332
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 334
    .end local v6    # "separatorText":Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 346
    .end local v3    # "minuteIndex":I
    .restart local v1    # "defaultTypeface":Landroid/graphics/Typeface;
    .restart local v5    # "pickerTypeface":Landroid/graphics/Typeface;
    .restart local v8    # "themeTypeFace":Ljava/lang/String;
    :cond_6
    invoke-static {v8}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    goto :goto_2
.end method

.method private setTextWatcher()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 855
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 856
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 858
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;

    invoke-direct {v1, p0, v4, v2}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 859
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemTextWatcher;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 861
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 862
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SemKeyListener;-><init>(Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 854
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 575
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 578
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 580
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 590
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 574
    return-void

    .line 582
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 583
    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 584
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 585
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 582
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_1
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-char v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 643
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 658
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    .line 638
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 646
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 650
    :cond_1
    iget-char v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 651
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 652
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 655
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 658
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 553
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 554
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 555
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 557
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 561
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 562
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .line 565
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 567
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method

.method private updateModeState(Lcom/samsung/android/widget/SemNumberPicker;Z)V
    .locals 2
    .param p1, "picker"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "mode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p2, :cond_0

    .line 272
    return-void

    .line 273
    :cond_0
    if-nez p2, :cond_3

    .line 274
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 270
    :cond_3
    return-void
.end method

.method private validCheck()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 594
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_5

    .line 595
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    return-void

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 599
    .local v0, "text":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 600
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    if-nez v1, :cond_3

    if-eq v0, v2, :cond_3

    .line 601
    add-int/lit8 v0, v0, 0xc

    .line 607
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setHour(I)V

    .line 608
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 610
    .end local v0    # "text":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 611
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 612
    return-void

    .line 603
    .restart local v0    # "text":I
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 604
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    .end local v0    # "text":I
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setMinute(I)V

    .line 614
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 593
    :cond_5
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getDefaultHeight()I
    .locals 1

    .prologue
    .line 843
    iget v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDefaultHeight:I

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDefaultWidth:I

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 814
    if-nez p1, :cond_0

    .line 815
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 816
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 818
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v0

    .line 403
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    return v0

    .line 405
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 406
    rem-int/lit8 v1, v0, 0xc

    return v1

    .line 408
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 827
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    .line 828
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    .line 830
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    .line 833
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 480
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 482
    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=disableMobileCMKey"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=disableMobileCMKey"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 479
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 539
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 538
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 544
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 543
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 525
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 526
    const/16 v0, 0x81

    .line 530
    .local v0, "flags":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 531
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 532
    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 533
    iget-object v3, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 532
    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    return-void

    .line 528
    .end local v0    # "flags":I
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x41

    .restart local v0    # "flags":I
    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 511
    check-cast v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;

    .line 512
    .local v0, "ss":Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setHour(I)V

    .line 513
    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setMinute(I)V

    .line 510
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 506
    new-instance v0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILcom/samsung/android/widget/SemTimePickerSpinnerDelegate$SavedState;)V

    return-object v0
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 626
    invoke-super {p0, p1}, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 627
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 625
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 3
    .param p1, "editTextMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 763
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_0

    .line 764
    return-void

    .line 774
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    .line 775
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 777
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 778
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 779
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 780
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-nez v1, :cond_3

    .line 781
    if-eqz v0, :cond_1

    .line 782
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 789
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_2

    .line 790
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemTimePicker;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/widget/SemTimePicker;Z)V

    .line 762
    :cond_2
    return-void

    .line 785
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 464
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 457
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    .prologue
    .line 368
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 367
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 431
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 432
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    .line 437
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 438
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getHourFormatData()V

    .line 439
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateHourControl()V

    .line 441
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 442
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 430
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 415
    invoke-static {}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 418
    :cond_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 421
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->onTimeChanged()V

    .line 413
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;)V
    .locals 0
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnEditTextModeChangedListener;

    .line 751
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/samsung/android/widget/SemTimePicker$AbstractSemTimePickerDelegate;->mOnTimeChangedListener:Lcom/samsung/android/widget/SemTimePicker$OnTimeChangedListener;

    .line 452
    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 3
    .param p1, "delayTime"    # I
    .param p2, "listener"    # Lcom/samsung/android/widget/SemAnimationListener;

    .prologue
    const/4 v2, 0x0

    .line 801
    invoke-direct {p0}, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 803
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/lit8 v1, p1, 0x37

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 804
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/lit8 v1, p1, 0x6e

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 800
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 807
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/lit8 v1, p1, 0x37

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 808
    iget-object v0, p0, Lcom/samsung/android/widget/SemTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/lit8 v1, p1, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    goto :goto_0
.end method

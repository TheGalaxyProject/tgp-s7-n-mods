.class public Lcom/android/settings/notification/ZenModeScheduleDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeScheduleDaysSelection.java"


# static fields
.field public static final DAYS:[I


# instance fields
.field private mDayFormat:Ljava/text/SimpleDateFormat;

.field private final mDays:Landroid/util/SparseBooleanArray;

.field private mDaysCheckBox:[Landroid/widget/CheckBox;

.field private mDisableListeners:Z

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDisableListeners:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)[I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    .line 38
    return-void

    .line 39
    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "days"    # [I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "EEEE"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 52
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    .line 55
    const/16 v10, 0x8

    new-array v10, v10, [Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    .line 60
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 62
    const v11, 0x7f0a00f6

    .line 61
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 63
    .local v3, "hPad":I
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v3, v11, v3, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 64
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 66
    const v11, 0x7f0a06a7

    .line 65
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 67
    .local v8, "vPad":I
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    div-int/lit8 v11, v8, 0x2

    invoke-virtual {v10, v3, v11, v3, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 69
    .end local v8    # "vPad":I
    :cond_0
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->addView(Landroid/view/View;)V

    .line 70
    if-eqz p2, :cond_1

    .line 71
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v10, p2

    if-ge v4, v10, :cond_1

    .line 72
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    aget v11, p2, v4

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 75
    .end local v4    # "i":I
    :cond_1
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "EEEE"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 78
    invoke-static {p1}, Lcom/android/settings/Utils;->isChinaHKTWLocale(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 79
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "EEE"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 82
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 84
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    sget-object v10, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v10, v10

    if-ge v4, v10, :cond_6

    .line 85
    sget-object v10, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v2, v10, v4

    .line 86
    .local v2, "day":I
    move v9, v4

    .line 89
    .local v9, "val":I
    const v10, 0x7f040377

    .line 90
    const/4 v11, 0x0

    .line 89
    invoke-virtual {v5, v10, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 91
    .local v7, "mTempLayout":Landroid/widget/LinearLayout;
    const v10, 0x7f110848

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 92
    .local v1, "checkBox":Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 93
    const v10, 0x7f110849

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_3
    const v10, 0x7f110847

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 97
    .local v6, "mFocusLayout":Landroid/widget/LinearLayout;
    new-instance v10, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;

    invoke-direct {v10, p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    if-eqz v4, :cond_4

    .line 105
    const/4 v10, 0x7

    invoke-virtual {v0, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 106
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    new-instance v10, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;

    invoke-direct {v10, p0, v2, v9}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$2;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;II)V

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    :goto_2
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDaysCheckBox:[Landroid/widget/CheckBox;

    aput-object v1, v10, v4

    .line 148
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    :cond_4
    const v10, 0x7f0b0b39

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x7

    if-lt v10, v11, :cond_5

    .line 127
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    :cond_5
    new-instance v10, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;

    invoke-direct {v10, p0, v9}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection$3;-><init>(Lcom/android/settings/notification/ZenModeScheduleDaysSelection;I)V

    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    .line 58
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "day":I
    .end local v6    # "mFocusLayout":Landroid/widget/LinearLayout;
    .end local v7    # "mTempLayout":Landroid/widget/LinearLayout;
    .end local v9    # "val":I
    :cond_6
    return-void
.end method

.method private getDays()[I
    .locals 5

    .prologue
    .line 153
    new-instance v2, Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 154
    .local v2, "rt":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 155
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 156
    .local v0, "day":I
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 159
    .end local v0    # "day":I
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 160
    .local v3, "rta":[I
    const/4 v1, 0x0

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 161
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 164
    return-object v3
.end method


# virtual methods
.method protected onChanged([I)V
    .locals 0
    .param p1, "days"    # [I

    .prologue
    .line 167
    return-void
.end method

.class public Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;
.super Landroid/view/View;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DayOfTheWeekView"
.end annotation


# instance fields
.field private mDayColorSet:[I

.field private mDayLabelCalendar:Ljava/util/Calendar;

.field private mDefaultWeekdayFeatureString:Ljava/lang/String;

.field private mMonthDayLabelPaint:Landroid/graphics/Paint;

.field private mNormalDayTextColor:I

.field private mSaturdayTextColor:I

.field private mSundayTextColor:I

.field private mWeekdayFeatureString:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/content/Context;)V
    .locals 7
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemDatePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 2040
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    .line 2041
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2035
    const/4 v3, 0x7

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    .line 2038
    const-string/jumbo v3, "XXXXXXR"

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    .line 2043
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 2045
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2046
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x10405b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2049
    .local v0, "dayOfWeekTypeface":Ljava/lang/String;
    const v3, 0x1060179

    .line 2048
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    .line 2051
    const v3, 0x106017a

    .line 2050
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    .line 2053
    const v3, 0x106017b

    .line 2052
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    .line 2055
    const v3, 0x1050301

    .line 2054
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2057
    .local v1, "monthDayLabelTextSize":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Calendar_SetColorOfDays"

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    .line 2059
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 2060
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2061
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2062
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2063
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2064
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2065
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2066
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2040
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2071
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2074
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 2076
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get12(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/samsung/android/widget/SemDatePicker;->-set1(Lcom/samsung/android/widget/SemDatePicker;I)I

    .line 2077
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get11(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v8, v9, 0x3

    .line 2078
    .local v8, "y":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get13(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    div-int v2, v9, v10

    .line 2080
    .local v2, "dayWidthHalf":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 2081
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2082
    .local v5, "parsedColor":C
    add-int/lit8 v9, v3, 0x2

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    rem-int v4, v9, v10

    .line 2083
    .local v4, "index":I
    const/16 v9, 0x52

    if-ne v5, v9, :cond_1

    .line 2084
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    aput v10, v9, v4

    .line 2080
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2085
    :cond_1
    const/16 v9, 0x42

    if-ne v5, v9, :cond_2

    .line 2086
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    aput v10, v9, v4

    goto :goto_1

    .line 2088
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    aput v10, v9, v4

    goto :goto_1

    .line 2092
    .end local v4    # "index":I
    .end local v5    # "parsedColor":C
    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 2093
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get42(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    rem-int v0, v9, v10

    .line 2094
    .local v0, "calendarDay":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v10, 0x7

    invoke-virtual {v9, v10, v0}, Ljava/util/Calendar;->set(II)V

    .line 2096
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get10(Lcom/samsung/android/widget/SemDatePicker;)Ljava/text/SimpleDateFormat;

    move-result-object v9

    .line 2097
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 2096
    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 2099
    .local v1, "dayLabel":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get21(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2100
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 2101
    .local v6, "rtlIndex":I
    sub-int v9, v6, v3

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v2

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get37(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    add-int v7, v9, v10

    .line 2106
    .end local v6    # "rtlIndex":I
    .local v7, "x":I
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    aget v10, v10, v0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 2107
    int-to-float v9, v7

    int-to-float v10, v8

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2092
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2103
    .end local v7    # "x":I
    :cond_4
    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v2

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get37(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    add-int v7, v9, v10

    .restart local v7    # "x":I
    goto :goto_3

    .line 2070
    .end local v0    # "calendarDay":I
    .end local v1    # "dayLabel":Ljava/lang/String;
    .end local v7    # "x":I
    :cond_5
    return-void
.end method

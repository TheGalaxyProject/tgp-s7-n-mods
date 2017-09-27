.class Landroid/support/v17/leanback/widget/picker/PickerConstant;
.super Ljava/lang/Object;
.source "PickerConstant.java"


# instance fields
.field public final ampm:[Ljava/lang/String;

.field public final dateSeparator:Ljava/lang/String;

.field public final days:[Ljava/lang/String;

.field public final hours12:[Ljava/lang/String;

.field public final hours24:[Ljava/lang/String;

.field public final locale:Ljava/util/Locale;

.field public final minutes:[Ljava/lang/String;

.field public final months:[Ljava/lang/String;

.field public final timeSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/PickerConstant;->locale:Ljava/util/Locale;

    .line 41
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v1

    .line 42
    .local v1, "symbols":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerConstant;->months:[Ljava/lang/String;

    .line 43
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 44
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v3

    const-string/jumbo v4, "%02d"

    .line 44
    invoke-static {v2, v3, v4}, Landroid/support/v17/leanback/widget/picker/PickerConstant;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerConstant;->days:[Ljava/lang/String;

    .line 46
    const-string/jumbo v2, "%02d"

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-static {v3, v4, v2}, Landroid/support/v17/leanback/widget/picker/PickerConstant;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerConstant;->hours12:[Ljava/lang/String;

    .line 47
    const-string/jumbo v2, "%02d"

    const/16 v3, 0x17

    invoke-static {v5, v3, v2}, Landroid/support/v17/leanback/widget/picker/PickerConstant;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerConstant;->hours24:[Ljava/lang/String;

    .line 48
    const-string/jumbo v2, "%02d"

    const/16 v3, 0x3b

    invoke-static {v5, v3, v2}, Landroid/support/v17/leanback/widget/picker/PickerConstant;->createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerConstant;->minutes:[Ljava/lang/String;

    .line 49
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerConstant;->ampm:[Ljava/lang/String;

    .line 50
    sget v2, Landroid/support/v17/leanback/R$string;->lb_date_separator:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerConstant;->dateSeparator:Ljava/lang/String;

    .line 51
    sget v2, Landroid/support/v17/leanback/R$string;->lb_time_separator:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/PickerConstant;->timeSeparator:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static createStringIntArrays(IILjava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "firstNumber"    # I
    .param p1, "lastNumber"    # I
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 56
    sub-int v2, p1, p0

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 57
    .local v0, "array":[Ljava/lang/String;
    move v1, p0

    .local v1, "i":I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 58
    if-eqz p2, :cond_0

    .line 59
    sub-int v2, v1, p0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 57
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    sub-int v2, v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_1

    .line 64
    :cond_1
    return-object v0
.end method

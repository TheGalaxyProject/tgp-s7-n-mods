.class public Lcom/android/settings/datausage/AppDataUsagePreference;
.super Landroid/preference/Preference;
.source "AppDataUsagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;
    }
.end annotation


# static fields
.field private static mSelectDisplayUnit:I

.field static sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field static sIsDataLoaded:Z


# instance fields
.field private mIsVZW:Z

.field private final mItem:Lcom/android/settingslib/AppItem;

.field private final mPercent:I

.field private final mProvider:Lcom/android/settingslib/net/UidDetailProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/datausage/AppDataUsagePreference;->mSelectDisplayUnit:I

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/datausage/AppDataUsagePreference;->sIsDataLoaded:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/settingslib/AppItem;
    .param p3, "percent"    # I
    .param p4, "provider"    # Lcom/android/settingslib/net/UidDetailProvider;
    .param p5, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mIsVZW:Z

    .line 52
    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    .line 53
    iput p3, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    .line 54
    const v1, 0x7f0400ac

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setLayoutResource(I)V

    .line 55
    const v1, 0x7f04031c

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setWidgetLayoutResource(I)V

    .line 58
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "sSalesCode":Ljava/lang/String;
    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mIsVZW:Z

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_usage_display_unit"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/datausage/AppDataUsagePreference;->mSelectDisplayUnit:I

    .line 63
    iget-boolean v1, p2, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v1, :cond_2

    iget-wide v2, p2, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 64
    const v1, 0x7f0b17c1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(I)V

    .line 75
    :cond_1
    :goto_0
    iput-object p4, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 76
    sput-object p5, Lcom/android/settings/datausage/AppDataUsagePreference;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 80
    invoke-static {p4, p2, p0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V

    .line 82
    const-string/jumbo v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AppDataUsagePreference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/datausage/AppDataUsagePreference;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 66
    :cond_2
    iget-wide v2, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    iget-boolean v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mIsVZW:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/android/settings/datausage/AppDataUsagePreference;->mSelectDisplayUnit:I

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/datausage/AppDataUsagePreference;->mSelectDisplayUnit:I

    iget-wide v4, p2, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {v1, v2, v4, v5}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getItem()Lcom/android/settingslib/AppItem;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 96
    const v1, 0x102000d

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 98
    .local v0, "progress":Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-boolean v1, v1, Lcom/android/settingslib/AppItem;->restricted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget-wide v2, v1, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 99
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    :goto_0
    iget v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 104
    sget-boolean v1, Lcom/android/settings/datausage/AppDataUsagePreference;->sIsDataLoaded:Z

    if-nez v1, :cond_0

    .line 105
    const-string/jumbo v1, "DataUsage"

    const-string/jumbo v2, "sIsDataLoaded == false. retry UidDetailTask"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    invoke-static {v1, v2, p0}, Lcom/android/settings/datausage/AppDataUsagePreference$UidDetailTask;->bindView(Lcom/android/settingslib/net/UidDetailProvider;Lcom/android/settingslib/AppItem;Lcom/android/settings/datausage/AppDataUsagePreference;)V

    .line 91
    :cond_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

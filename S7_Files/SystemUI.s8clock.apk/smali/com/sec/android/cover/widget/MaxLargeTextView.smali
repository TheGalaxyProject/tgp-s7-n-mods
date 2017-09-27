.class public Lcom/sec/android/cover/widget/MaxLargeTextView;
.super Landroid/widget/TextView;
.source "MaxLargeTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/sec/android/cover/widget/MaxLargeTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/widget/MaxLargeTextView;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSizeInternal(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSizeInternal(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSizeInternal(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSizeInternal(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private setTextSizeInternal(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    .local v1, "scale":F
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_scale"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 46
    :goto_0
    const v3, 0x3f99999a    # 1.2f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 47
    const v1, 0x3f99999a    # 1.2f

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/MaxLargeTextView;->getTextSize()F

    move-result v3

    mul-float v2, v3, v1

    .line 51
    .local v2, "size":F
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/cover/widget/MaxLargeTextView;->setTextSize(IF)V

    .line 38
    return-void

    .line 42
    .end local v2    # "size":F
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v3, Lcom/sec/android/cover/widget/MaxLargeTextView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "font_scale settings not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class public Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;
.super Ljava/lang/Object;
.source "AccessoriesUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/AccessoriesUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerIDInfo"
.end annotation


# instance fields
.field public mArray:Ljava/lang/String;

.field public mCallerIDCount:I

.field public mChecked:Z

.field public mIcon:I

.field public mId:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "icon"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "array"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mId:I

    .line 81
    iput p2, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mIcon:I

    .line 82
    iput-object p3, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mArray:Ljava/lang/String;

    .line 84
    iput v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    .line 79
    return-void
.end method


# virtual methods
.method public increaseCallerIDCount()V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    .line 88
    return-void
.end method

.method public resetCallerIDCount()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    .line 92
    return-void
.end method

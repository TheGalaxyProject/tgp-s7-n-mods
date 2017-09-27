.class public Lcom/android/settings/EFSProperties$KeyguardProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyguardProperties"
.end annotation


# instance fields
.field public AID:[B

.field public csName:[B

.field public enabledSCP:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pukMaxLength:I

.field public pukMinLength:I

.field public storageType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    iput-object v1, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->csName:[B

    .line 606
    iput-object v1, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->AID:[B

    .line 607
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->storageType:I

    .line 608
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->enabledSCP:I

    .line 609
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pinMinLength:I

    .line 610
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pinMaxLength:I

    .line 611
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pukMinLength:I

    .line 612
    iput v0, p0, Lcom/android/settings/EFSProperties$KeyguardProperties;->pukMaxLength:I

    .line 604
    return-void
.end method

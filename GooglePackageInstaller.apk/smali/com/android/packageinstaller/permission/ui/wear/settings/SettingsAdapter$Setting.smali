.class public final Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;
.super Ljava/lang/Object;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Setting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public iconResource:I

.field public final id:I

.field public inProgress:Z

.field public name:Ljava/lang/CharSequence;

.field public nameResourceId:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;-><init>(Ljava/lang/CharSequence;ILjava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "ITS;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->name:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->iconResource:I

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->data:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->inProgress:Z

    iput p4, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->id:I

    return-void
.end method

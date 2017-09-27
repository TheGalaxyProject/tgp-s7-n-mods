.class public Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;
.super Ljava/lang/Object;
.source "ApplicationNetInfo.java"


# instance fields
.field private dataTotal:J

.field private isDataAllowed:Z

.field private isWarningAllowed:Z

.field private isWlanAllowed:Z

.field private label:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private uid:I

.field private uids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wlanTotal:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZZZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p5, "isDataAllowed"    # Z
    .param p6, "isWlanAllowed"    # Z
    .param p7, "isWarningAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed:Z

    .line 35
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->packageName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->label:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->uid:I

    .line 38
    iput-object p4, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->uids:Ljava/util/ArrayList;

    .line 39
    iput-boolean p5, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed:Z

    .line 40
    iput-boolean p6, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed:Z

    .line 41
    iput-boolean p7, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->uid:I

    return v0
.end method

.method public getUids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->uids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isDataAllowed()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed:Z

    return v0
.end method

.method public isWarningAllowed()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed:Z

    return v0
.end method

.method public isWlanAllowed()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed:Z

    return v0
.end method

.method public setDataAllowed(Z)V
    .locals 0
    .param p1, "isDataAllowed"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed:Z

    .line 90
    return-void
.end method

.method public setDataTotal(J)V
    .locals 1
    .param p1, "dataTotal"    # J

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->dataTotal:J

    .line 106
    return-void
.end method

.method public setWarningAllowed(Z)V
    .locals 0
    .param p1, "isWarningAllowed"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed:Z

    .line 122
    return-void
.end method

.method public setWlanAllowed(Z)V
    .locals 0
    .param p1, "isWlanAllowed"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed:Z

    .line 98
    return-void
.end method

.method public setWlanTotal(J)V
    .locals 1
    .param p1, "wlanTotal"    # J

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->wlanTotal:J

    .line 114
    return-void
.end method

.class public Lcom/android/server/am/MultiScreenAttrs;
.super Ljava/lang/Object;
.source "MultiScreenAttrs.java"


# static fields
.field public static sConstDefaultMultiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;


# instance fields
.field private mBaseActivity:Z

.field private mBaseDisplayId:I

.field private mDisplayId:I

.field public triggerActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/server/am/MultiScreenAttrs;

    invoke-direct {v0}, Lcom/android/server/am/MultiScreenAttrs;-><init>()V

    sput-object v0, Lcom/android/server/am/MultiScreenAttrs;->sConstDefaultMultiScreenAttrs:Lcom/android/server/am/MultiScreenAttrs;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenAttrs;->setDisplayId(I)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    .line 18
    iput-boolean v0, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiScreenAttrs;->setDisplayId(I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MultiScreenAttrs;)V
    .locals 1
    .param p1, "attrs"    # Lcom/android/server/am/MultiScreenAttrs;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiScreenAttrs;->setTo(Lcom/android/server/am/MultiScreenAttrs;Z)V

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/am/MultiScreenAttrs;)Z
    .locals 1
    .param p1, "other"    # Lcom/android/server/am/MultiScreenAttrs;

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseActivity()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    return v0
.end method

.method public getBaseDisplayId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseDisplayId:I

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/server/am/MultiScreenAttrs;->mDisplayId:I

    return v0
.end method

.method public setBaseActivity(Z)V
    .locals 0
    .param p1, "baseActivity"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    .line 47
    return-void
.end method

.method public setBaseDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseDisplayId:I

    .line 39
    return-void
.end method

.method public setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/server/am/MultiScreenAttrs;->mDisplayId:I

    .line 27
    return-void
.end method

.method public setTo(Lcom/android/server/am/MultiScreenAttrs;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/am/MultiScreenAttrs;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiScreenAttrs;->setTo(Lcom/android/server/am/MultiScreenAttrs;Z)V

    .line 56
    return-void
.end method

.method public setTo(Lcom/android/server/am/MultiScreenAttrs;Z)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/am/MultiScreenAttrs;
    .param p2, "includeUniqueOptions"    # Z

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/MultiScreenAttrs;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenAttrs;->setDisplayId(I)V

    .line 65
    invoke-virtual {p1}, Lcom/android/server/am/MultiScreenAttrs;->getBaseDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenAttrs;->setBaseDisplayId(I)V

    .line 66
    iget-boolean v0, p1, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/MultiScreenAttrs;->setBaseActivity(Z)V

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/am/MultiScreenAttrs;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v1, "{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MultiScreenAttrs;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v1, ", mBaseDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string/jumbo v1, ", mBaseActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/MultiScreenAttrs;->mBaseActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

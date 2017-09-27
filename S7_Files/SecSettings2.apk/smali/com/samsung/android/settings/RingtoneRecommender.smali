.class public Lcom/samsung/android/settings/RingtoneRecommender;
.super Ljava/lang/Object;
.source "RingtoneRecommender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;
    }
.end annotation


# instance fields
.field public mIsOpen:Z

.field private mListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

.field private mMode:I

.field private final mSmat:Lcom/samsung/android/media/mir/SemAudioThumbnail;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/RingtoneRecommender;)Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    .line 86
    iput v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mMode:I

    .line 125
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-direct {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    .line 124
    return-void
.end method

.method private extract(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mSmat:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    new-instance v1, Lcom/samsung/android/settings/RingtoneRecommender$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/RingtoneRecommender$1;-><init>(Lcom/samsung/android/settings/RingtoneRecommender;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(Ljava/lang/String;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V

    .line 183
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 168
    const-string/jumbo v0, "RingtoneRecommender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "close() is opened ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    .line 167
    :cond_0
    return-void
.end method

.method public doExtract(Ljava/lang/String;Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    .line 155
    iput-object p2, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mListener:Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    .line 156
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/RingtoneRecommender;->extract(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    .line 137
    const-string/jumbo v0, "RingtoneRecommender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOpen() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-boolean v0, p0, Lcom/samsung/android/settings/RingtoneRecommender;->mIsOpen:Z

    return v0
.end method

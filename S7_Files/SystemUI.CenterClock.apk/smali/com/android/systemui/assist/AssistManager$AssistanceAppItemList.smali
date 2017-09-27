.class public Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;
.super Ljava/lang/Object;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssistanceAppItemList"
.end annotation


# instance fields
.field private mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAssistanceAppName:Ljava/lang/String;

.field private mAssistanceAppType:I

.field private mAssistanceComponent:Landroid/content/ComponentName;

.field private mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "voiceInteractionService"    # Landroid/service/voice/VoiceInteractionServiceInfo;
    .param p3, "image"    # Landroid/graphics/drawable/Drawable;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    .line 560
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 561
    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

    .line 562
    iput-object p4, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppName:Ljava/lang/String;

    .line 563
    iput p5, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppType:I

    .line 558
    return-void
.end method


# virtual methods
.method public getAssistanceAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAssistanceAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAssistanceAppType()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceAppType:I

    return v0
.end method

.method public getAssistanceComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getAssistanceVoiceInteractionService()Landroid/service/voice/VoiceInteractionServiceInfo;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->mAssistanceVoiceInteractionService:Landroid/service/voice/VoiceInteractionServiceInfo;

    return-object v0
.end method

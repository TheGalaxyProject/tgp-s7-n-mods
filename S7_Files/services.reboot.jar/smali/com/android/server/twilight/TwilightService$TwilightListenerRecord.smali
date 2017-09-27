.class Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/twilight/TwilightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwilightListenerRecord"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/twilight/TwilightListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;)Lcom/android/server/twilight/TwilightListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mListener:Lcom/android/server/twilight/TwilightListener;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/twilight/TwilightListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mListener:Lcom/android/server/twilight/TwilightListener;

    .line 203
    iput-object p2, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method


# virtual methods
.method public postUpdate()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$TwilightListenerRecord;->mListener:Lcom/android/server/twilight/TwilightListener;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightListener;->onTwilightStateChanged()V

    .line 211
    return-void
.end method

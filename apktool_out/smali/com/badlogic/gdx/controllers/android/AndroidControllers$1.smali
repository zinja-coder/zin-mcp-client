.class Lcom/badlogic/gdx/controllers/android/AndroidControllers$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "AndroidControllers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/controllers/android/AndroidControllers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool",
        "<",
        "Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$1;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject()Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;

    invoke-direct {v0}, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/controllers/android/AndroidControllers$1;->newObject()Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;

    move-result-object v0

    return-object v0
.end method

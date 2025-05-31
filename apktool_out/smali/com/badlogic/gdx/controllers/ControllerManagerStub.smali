.class public Lcom/badlogic/gdx/controllers/ControllerManagerStub;
.super Ljava/lang/Object;
.source "ControllerManagerStub.java"

# interfaces
.implements Lcom/badlogic/gdx/controllers/ControllerManager;


# instance fields
.field controllers:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/controllers/Controller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/controllers/ControllerManagerStub;->controllers:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/controllers/ControllerListener;

    .prologue
    .line 33
    return-void
.end method

.method public clearListeners()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public getControllers()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/controllers/Controller;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/badlogic/gdx/controllers/ControllerManagerStub;->controllers:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public removeListener(Lcom/badlogic/gdx/controllers/ControllerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/badlogic/gdx/controllers/ControllerListener;

    .prologue
    .line 37
    return-void
.end method

.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$DefaultOnscreenKeyboard;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultOnscreenKeyboard"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 708
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V

    .line 709
    return-void
.end method

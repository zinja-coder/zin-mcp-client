.class Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->cancel()V

    .line 52
    const/4 v0, 0x0

    return v0
.end method

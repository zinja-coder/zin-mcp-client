.class Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

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
    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->toFront()V

    .line 81
    const/4 v0, 0x0

    return v0
.end method

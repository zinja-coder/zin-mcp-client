.class public abstract Lcom/badlogic/gdx/Game;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;


# instance fields
.field protected screen:Lcom/badlogic/gdx/Screen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->hide()V

    .line 32
    :cond_0
    return-void
.end method

.method public getScreen()Lcom/badlogic/gdx/Screen;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->pause()V

    .line 37
    :cond_0
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Screen;->render(F)V

    .line 47
    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/Screen;->resize(II)V

    .line 52
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->resume()V

    .line 42
    :cond_0
    return-void
.end method

.method public setScreen(Lcom/badlogic/gdx/Screen;)V
    .locals 3
    .param p1, "screen"    # Lcom/badlogic/gdx/Screen;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->hide()V

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    invoke-interface {v0}, Lcom/badlogic/gdx/Screen;->show()V

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/Game;->screen:Lcom/badlogic/gdx/Screen;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Screen;->resize(II)V

    .line 64
    :cond_1
    return-void
.end method

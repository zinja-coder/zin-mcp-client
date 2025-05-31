.class public Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field public static isLinux:Z

.field public static isMac:Z

.field public static isWindows:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OS X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    .line 10
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isWindows:Z

    .line 11
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isLinux:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alt()Z
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x39

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static alt(I)Z
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 64
    const/16 v0, 0x39

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ctrl()Z
    .locals 2

    .prologue
    .line 46
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ctrl(I)Z
    .locals 3
    .param p0, "keycode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    sget-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->isMac:Z

    if-eqz v2, :cond_1

    .line 54
    const/16 v2, 0x3f

    if-ne p0, v2, :cond_0

    .line 56
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    const/16 v2, 0x81

    if-eq p0, v2, :cond_2

    const/16 v2, 0x82

    if-ne p0, v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static left()Z
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    return v0
.end method

.method public static left(I)Z
    .locals 1
    .param p0, "button"    # I

    .prologue
    .line 18
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static middle()Z
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    return v0
.end method

.method public static middle(I)Z
    .locals 1
    .param p0, "button"    # I

    .prologue
    .line 34
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static right()Z
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    return v0
.end method

.method public static right(I)Z
    .locals 1
    .param p0, "button"    # I

    .prologue
    const/4 v0, 0x1

    .line 26
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shift()Z
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shift(I)Z
    .locals 1
    .param p0, "keycode"    # I

    .prologue
    .line 42
    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

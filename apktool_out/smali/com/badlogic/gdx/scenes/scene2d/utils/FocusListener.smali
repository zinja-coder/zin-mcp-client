.class public abstract Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;
.super Ljava/lang/Object;
.source "FocusListener.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$1;,
        Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 4
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/Event;

    .prologue
    const/4 v3, 0x0

    .line 27
    instance-of v1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    if-nez v1, :cond_0

    .line 37
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 29
    .local v0, "focusEvent":Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$utils$FocusListener$FocusEvent$Type:[I

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 31
    :pswitch_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isFocused()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;->keyboardFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    goto :goto_0

    .line 34
    :pswitch_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isFocused()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener;->scrollFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public keyboardFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "focused"    # Z

    .prologue
    .line 42
    return-void
.end method

.method public scrollFocusChanged(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    .param p2, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "focused"    # Z

    .prologue
    .line 46
    return-void
.end method

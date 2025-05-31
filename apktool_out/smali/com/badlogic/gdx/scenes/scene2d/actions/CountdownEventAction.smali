.class public Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;
.source "CountdownEventAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/badlogic/gdx/scenes/scene2d/Event;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction",
        "<TT;>;"
    }
.end annotation


# instance fields
.field count:I

.field current:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;, "Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction<TT;>;"
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/EventAction;-><init>(Ljava/lang/Class;)V

    .line 14
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;->count:I

    .line 15
    return-void
.end method


# virtual methods
.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;, "Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction<TT;>;"
    .local p1, "event":Lcom/badlogic/gdx/scenes/scene2d/Event;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;->current:I

    .line 19
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;->current:I

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/CountdownEventAction;->count:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

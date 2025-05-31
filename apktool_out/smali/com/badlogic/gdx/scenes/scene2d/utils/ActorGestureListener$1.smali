.class Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;
.super Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;
.source "ActorGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;-><init>(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final initialPointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final initialPointer2:Lcom/badlogic/gdx/math/Vector2;

.field private final pointer1:Lcom/badlogic/gdx/math/Vector2;

.field private final pointer2:Lcom/badlogic/gdx/math/Vector2;

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-direct {p0}, Lcom/badlogic/gdx/input/GestureDetector$GestureAdapter;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method


# virtual methods
.method public fling(FFI)Z
    .locals 2
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "button"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public longPress(FF)Z
    .locals 4
    .param p1, "stageX"    # F
    .param p2, "stageY"    # F

    .prologue
    .line 56
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->longPress(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z

    move-result v0

    return v0
.end method

.method public pan(FFFF)Z
    .locals 6
    .param p1, "stageX"    # F
    .param p2, "stageY"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public pinch(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 6
    .param p1, "stageInitialPointer1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "stageInitialPointer2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "stagePointer1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "stagePointer2"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->initialPointer2:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->pointer2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->pinch(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public tap(FFII)Z
    .locals 6
    .param p1, "stageX"    # F
    .param p2, "stageY"    # F
    .param p3, "count"    # I
    .param p4, "button"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 51
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->tap(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public zoom(FF)Z
    .locals 2
    .param p1, "initialDistance"    # F
    .param p2, "distance"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->event:Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {v0, v1, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->zoom(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method

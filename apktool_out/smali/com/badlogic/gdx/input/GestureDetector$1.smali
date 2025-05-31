.class Lcom/badlogic/gdx/input/GestureDetector$1;
.super Lcom/badlogic/gdx/utils/Timer$Task;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/input/GestureDetector;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/input/GestureDetector;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Timer$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    iget-boolean v0, v0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    iget-object v1, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    iget-object v1, v1, Lcom/badlogic/gdx/input/GestureDetector;->listener:Lcom/badlogic/gdx/input/GestureDetector$GestureListener;

    iget-object v2, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    iget-object v2, v2, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/input/GestureDetector$1;->this$0:Lcom/badlogic/gdx/input/GestureDetector;

    iget-object v3, v3, Lcom/badlogic/gdx/input/GestureDetector;->pointer1:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/input/GestureDetector$GestureListener;->longPress(FF)Z

    move-result v1

    iput-boolean v1, v0, Lcom/badlogic/gdx/input/GestureDetector;->longPressFired:Z

    .line 60
    :cond_0
    return-void
.end method

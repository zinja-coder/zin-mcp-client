.class public Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;
.super Ljava/lang/Object;
.source "DragAndDrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;,
        Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;,
        Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;
    }
.end annotation


# static fields
.field static final tmpVector:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field activePointer:I

.field private button:I

.field cancelTouchFocus:Z

.field dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field dragActorX:F

.field dragActorY:F

.field dragStartTime:J

.field dragTime:I

.field isValidTarget:Z

.field keepWithinStage:Z

.field payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

.field sourceListeners:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private tapSquareSize:F

.field target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

.field targets:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;",
            ">;"
        }
    .end annotation
.end field

.field touchOffsetX:F

.field touchOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->sourceListeners:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 41
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tapSquareSize:F

    .line 43
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorX:F

    const/high16 v0, -0x3e600000    # -20.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorY:F

    .line 46
    const/16 v0, 0xfa

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragTime:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    .line 48
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->cancelTouchFocus:Z

    .line 49
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->keepWithinStage:Z

    .line 271
    return-void
.end method


# virtual methods
.method public addSource(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
    .locals 2
    .param p1, "source"    # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    .prologue
    .line 52
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V

    .line 144
    .local v0, "listener":Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tapSquareSize:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->setTapSquareSize(F)V

    .line 145
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->button:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;->setButton(I)V

    .line 146
    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 147
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->sourceListeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public addTarget(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;)V
    .locals 1
    .param p1, "target"    # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 165
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 166
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->sourceListeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 167
    .local v0, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;>;"
    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_0

    .line 168
    .end local v0    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;>;"
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->sourceListeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 169
    return-void
.end method

.method public getDragActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSource(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
    .locals 2
    .param p1, "source"    # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->sourceListeners:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;

    .line 152
    .local v0, "dragListener":Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 153
    return-void
.end method

.method public removeTarget(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;)V
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 161
    return-void
.end method

.method public setButton(I)V
    .locals 0
    .param p1, "button"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->button:I

    .line 179
    return-void
.end method

.method public setCancelTouchFocus(Z)V
    .locals 0
    .param p1, "cancelTouchFocus"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->cancelTouchFocus:Z

    .line 212
    return-void
.end method

.method public setDragActorPosition(FF)V
    .locals 0
    .param p1, "dragActorX"    # F
    .param p2, "dragActorY"    # F

    .prologue
    .line 182
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorX:F

    .line 183
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorY:F

    .line 184
    return-void
.end method

.method public setDragTime(I)V
    .locals 0
    .param p1, "dragMillis"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragTime:I

    .line 205
    return-void
.end method

.method public setKeepWithinStage(Z)V
    .locals 0
    .param p1, "keepWithinStage"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->keepWithinStage:Z

    .line 216
    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0
    .param p1, "halfTapSquareSize"    # F

    .prologue
    .line 173
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tapSquareSize:F

    .line 174
    return-void
.end method

.method public setTouchOffset(FF)V
    .locals 0
    .param p1, "touchOffsetX"    # F
    .param p2, "touchOffsetY"    # F

    .prologue
    .line 188
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetX:F

    .line 189
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetY:F

    .line 190
    return-void
.end method

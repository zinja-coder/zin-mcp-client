.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "ClickListener.java"


# static fields
.field public static visualPressedDuration:F


# instance fields
.field private button:I

.field private cancelled:Z

.field private lastTapTime:J

.field private over:Z

.field private pressed:Z

.field private pressedButton:I

.field private pressedPointer:I

.field private tapCount:I

.field private tapCountInterval:J

.field private tapSquareSize:F

.field private touchDownX:F

.field private touchDownY:F

.field private visualPressedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->visualPressedDuration:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 48
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 36
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapSquareSize:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownX:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownY:F

    .line 37
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedPointer:I

    .line 38
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedButton:I

    .line 42
    const-wide/32 v0, 0x17d78400

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapCountInterval:J

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "button"    # I

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 52
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    .line 36
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapSquareSize:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownX:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownY:F

    .line 37
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedPointer:I

    .line 38
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedButton:I

    .line 42
    const-wide/32 v0, 0x17d78400

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapCountInterval:J

    .line 53
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->button:I

    .line 54
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedPointer:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->cancelled:Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    goto :goto_0
.end method

.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 115
    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "fromActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 100
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->over:Z

    .line 101
    :cond_0
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "toActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 104
    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->over:Z

    .line 105
    :cond_0
    return-void
.end method

.method public getButton()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->button:I

    return v0
.end method

.method public getPressedButton()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedButton:I

    return v0
.end method

.method public getPressedPointer()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedPointer:I

    return v0
.end method

.method public getTapCount()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapCount:I

    return v0
.end method

.method public getTapSquareSize()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapSquareSize:F

    return v0
.end method

.method public getTouchDownX()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownX:F

    return v0
.end method

.method public getTouchDownY()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownY:F

    return v0
.end method

.method public inTapSquare()Z
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inTapSquare(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 125
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapSquareSize:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapSquareSize:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public invalidateTapSquare()V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 136
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownX:F

    .line 137
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownY:F

    .line 138
    return-void
.end method

.method public isOver()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->over:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOver(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-virtual {p1, p2, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 120
    .local v0, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->inTapSquare(FF)Z

    move-result v1

    .line 121
    :cond_1
    return v1
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    return v0
.end method

.method public isVisualPressed()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    iget-wide v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->visualPressedTime:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 150
    :cond_2
    iget-wide v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->visualPressedTime:J

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 151
    iput-wide v6, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->visualPressedTime:J

    move v0, v1

    .line 152
    goto :goto_0
.end method

.method public setButton(I)V
    .locals 0
    .param p1, "button"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->button:I

    .line 204
    return-void
.end method

.method public setTapCountInterval(F)V
    .locals 2
    .param p1, "tapCountInterval"    # F

    .prologue
    .line 170
    const v0, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapCountInterval:J

    .line 171
    return-void
.end method

.method public setTapSquareSize(F)V
    .locals 0
    .param p1, "halfTapSquareSize"    # F

    .prologue
    .line 161
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapSquareSize:F

    .line 162
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 6
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    if-eqz v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    if-nez p4, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->button:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->button:I

    if-ne p5, v2, :cond_0

    .line 59
    :cond_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    .line 60
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedPointer:I

    .line 61
    iput p5, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedButton:I

    .line 62
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownX:F

    .line 63
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDownY:F

    .line 64
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    sget v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->visualPressedDuration:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v4

    float-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->visualPressedTime:J

    move v0, v1

    .line 65
    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 69
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedPointer:I

    if-ne p4, v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->cancelled:Z

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    .line 71
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->button:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->button:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    .line 72
    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->invalidateTapSquare()V

    goto :goto_0
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 10
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 79
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedPointer:I

    if-ne p4, v3, :cond_3

    .line 80
    iget-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->cancelled:Z

    if-nez v3, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->isOver(Lcom/badlogic/gdx/scenes/scene2d/Actor;FF)Z

    move-result v2

    .line 83
    .local v2, "touchUpOver":Z
    if-eqz v2, :cond_0

    if-nez p4, :cond_0

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->button:I

    if-eq v3, v8, :cond_0

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->button:I

    if-eq p5, v3, :cond_0

    const/4 v2, 0x0

    .line 84
    :cond_0
    if-eqz v2, :cond_2

    .line 85
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    .line 86
    .local v0, "time":J
    iget-wide v4, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->lastTapTime:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapCountInterval:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapCount:I

    .line 87
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->tapCount:I

    .line 88
    iput-wide v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->lastTapTime:J

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V

    .line 92
    .end local v0    # "time":J
    .end local v2    # "touchUpOver":Z
    :cond_2
    iput-boolean v9, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressed:Z

    .line 93
    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedPointer:I

    .line 94
    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->pressedButton:I

    .line 95
    iput-boolean v9, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->cancelled:Z

    .line 97
    :cond_3
    return-void
.end method

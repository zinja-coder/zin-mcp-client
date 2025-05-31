.class Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventTrigger"
.end annotation


# instance fields
.field keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

.field final synthetic this$0:Lcom/badlogic/gdx/input/RemoteInput;

.field touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/input/RemoteInput;Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;)V
    .locals 0
    .param p2, "touchEvent"    # Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;
    .param p3, "keyEvent"    # Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    .line 86
    iput-object p3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    .line 87
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 91
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v6, v1, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 92
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-boolean v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v6, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    aput-boolean v6, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    aput v3, v1, v2

    .line 102
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    aput v3, v1, v2

    .line 103
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    packed-switch v1, :pswitch_data_0

    .line 118
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    packed-switch v1, :pswitch_data_1

    .line 170
    :cond_2
    :goto_2
    return-void

    .line 105
    :pswitch_0
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 106
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v5, v1, v2

    .line 107
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v5, v1, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    goto :goto_1

    .line 110
    :pswitch_1
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    .line 111
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v6, v1, v2

    goto :goto_1

    .line 114
    :pswitch_2
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    goto :goto_1

    .line 121
    :pswitch_3
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    .line 122
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v2, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 124
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v5, v1, v2

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v5, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    .line 127
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v5, v1, v2

    goto/16 :goto_2

    .line 130
    :pswitch_4
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    .line 131
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v2, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 133
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v6, v1, v2

    goto/16 :goto_2

    .line 137
    :pswitch_5
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget-char v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyChar:C

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto/16 :goto_2

    .line 142
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    if-eqz v1, :cond_6

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    aput v3, v1, v2

    .line 144
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    aput v3, v1, v2

    .line 145
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    if-nez v1, :cond_5

    .line 146
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v5, v1, v2

    .line 147
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v5, v1, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    .line 149
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    if-ne v1, v5, :cond_6

    .line 150
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v6, v1, v2

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    if-nez v1, :cond_8

    .line 155
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_7

    .line 156
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v2, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v5, v1, v2

    .line 159
    :cond_7
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v5, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    .line 160
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v5, v1, v2

    .line 162
    :cond_8
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    if-ne v1, v5, :cond_2

    .line 163
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v2, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    .line 165
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v1, v1, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v6, v1, v2

    goto/16 :goto_2

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 119
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

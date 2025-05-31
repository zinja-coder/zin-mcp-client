.class Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;
.super Ljava/lang/Object;
.source "AndroidControllers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/controllers/android/AndroidControllers;->setupEventQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 74
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$000(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    monitor-enter v5

    .line 75
    :try_start_0
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$000(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;

    .line 76
    .local v0, "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    iget v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->type:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    iget-object v4, v4, Lcom/badlogic/gdx/controllers/android/AndroidController;->buttons:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    iget v7, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 94
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$200(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/controllers/ControllerListener;

    .line 95
    .local v3, "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    iget v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    invoke-interface {v3, v4, v6}, Lcom/badlogic/gdx/controllers/ControllerListener;->buttonDown(Lcom/badlogic/gdx/controllers/Controller;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    .end local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    :cond_2
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    invoke-virtual {v4}, Lcom/badlogic/gdx/controllers/android/AndroidController;->getListeners()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/controllers/ControllerListener;

    .line 98
    .restart local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    iget v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    invoke-interface {v3, v4, v6}, Lcom/badlogic/gdx/controllers/ControllerListener;->buttonDown(Lcom/badlogic/gdx/controllers/Controller;I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 78
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    :pswitch_2
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$100(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    iget-object v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 79
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$200(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/controllers/ControllerListener;

    .line 80
    .restart local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/controllers/ControllerListener;->connected(Lcom/badlogic/gdx/controllers/Controller;)V

    goto :goto_1

    .line 124
    .end local v0    # "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 84
    .restart local v0    # "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    :pswitch_3
    :try_start_1
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$100(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    iget-object v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 85
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$200(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/controllers/ControllerListener;

    .line 86
    .restart local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/controllers/ControllerListener;->disconnected(Lcom/badlogic/gdx/controllers/Controller;)V

    goto :goto_2

    .line 88
    .end local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    :cond_4
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    invoke-virtual {v4}, Lcom/badlogic/gdx/controllers/android/AndroidController;->getListeners()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/controllers/ControllerListener;

    .line 89
    .restart local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/controllers/ControllerListener;->disconnected(Lcom/badlogic/gdx/controllers/Controller;)V

    goto :goto_3

    .line 102
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    :pswitch_4
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    iget-object v4, v4, Lcom/badlogic/gdx/controllers/android/AndroidController;->buttons:Lcom/badlogic/gdx/utils/IntIntMap;

    iget v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/IntIntMap;->remove(II)I

    .line 103
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$200(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/controllers/ControllerListener;

    .line 104
    .restart local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    iget v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    invoke-interface {v3, v4, v6}, Lcom/badlogic/gdx/controllers/ControllerListener;->buttonUp(Lcom/badlogic/gdx/controllers/Controller;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    .end local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    :cond_6
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    invoke-virtual {v4}, Lcom/badlogic/gdx/controllers/android/AndroidController;->getListeners()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/controllers/ControllerListener;

    .line 107
    .restart local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    iget v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    invoke-interface {v3, v4, v6}, Lcom/badlogic/gdx/controllers/ControllerListener;->buttonUp(Lcom/badlogic/gdx/controllers/Controller;I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    .line 111
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    :pswitch_5
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    iget-object v4, v4, Lcom/badlogic/gdx/controllers/android/AndroidController;->axes:[F

    iget v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    iget v7, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->axisValue:F

    aput v7, v4, v6

    .line 112
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$200(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/controllers/ControllerListener;

    .line 113
    .restart local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    iget v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    iget v7, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->axisValue:F

    invoke-interface {v3, v4, v6, v7}, Lcom/badlogic/gdx/controllers/ControllerListener;->axisMoved(Lcom/badlogic/gdx/controllers/Controller;IF)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 115
    .end local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    :cond_9
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    invoke-virtual {v4}, Lcom/badlogic/gdx/controllers/android/AndroidController;->getListeners()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/controllers/ControllerListener;

    .line 116
    .restart local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    iget-object v4, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

    iget v6, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->code:I

    iget v7, v0, Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;->axisValue:F

    invoke-interface {v3, v4, v6, v7}, Lcom/badlogic/gdx/controllers/ControllerListener;->axisMoved(Lcom/badlogic/gdx/controllers/Controller;IF)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_0

    .line 122
    .end local v0    # "event":Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Lcom/badlogic/gdx/controllers/ControllerListener;
    :cond_b
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$300(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object v4

    iget-object v6, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v6}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$000(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Pool;->freeAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 123
    iget-object v4, p0, Lcom/badlogic/gdx/controllers/android/AndroidControllers$2;->this$0:Lcom/badlogic/gdx/controllers/android/AndroidControllers;

    invoke-static {v4}, Lcom/badlogic/gdx/controllers/android/AndroidControllers;->access$000(Lcom/badlogic/gdx/controllers/android/AndroidControllers;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 124
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4, p0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 126
    return-void

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

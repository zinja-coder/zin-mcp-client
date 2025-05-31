.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceViewAPI18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1273
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1805
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    .line 1274
    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    .line 1275
    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    .line 1276
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1277
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    .line 1278
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1279
    return-void
.end method

.method static synthetic access$1102(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 1271
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1320
    new-instance v19, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    .line 1321
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    .line 1322
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    .line 1324
    const/4 v8, 0x0

    .line 1325
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1326
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1327
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1328
    .local v5, "createGlInterface":Z
    const/4 v10, 0x0

    .line 1329
    .local v10, "lostEglContext":Z
    const/4 v13, 0x0

    .line 1330
    .local v13, "sizeChanged":Z
    const/16 v18, 0x0

    .line 1331
    .local v18, "wantRenderNotification":Z
    const/4 v6, 0x0

    .line 1332
    .local v6, "doRenderNotification":Z
    const/4 v2, 0x0

    .line 1333
    .local v2, "askedToReleaseEglContext":Z
    const/16 v17, 0x0

    .line 1334
    .local v17, "w":I
    const/4 v9, 0x0

    .line 1335
    .local v9, "h":I
    const/4 v7, 0x0

    .line 1338
    .local v7, "event":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1340
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldExit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1341
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1608
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1609
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1611
    monitor-exit v20

    return-void

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 1344
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0

    .line 1509
    :goto_2
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1511
    if-eqz v7, :cond_14

    .line 1512
    :try_start_4
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1513
    const/4 v7, 0x0

    .line 1514
    goto :goto_0

    .line 1350
    :cond_2
    const/4 v11, 0x0

    .line 1351
    .local v11, "pausing":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1352
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    .line 1353
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    .line 1354
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1361
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1366
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1367
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldReleaseEglContext:Z

    .line 1368
    const/4 v2, 0x1

    .line 1372
    :cond_4
    if-eqz v10, :cond_5

    .line 1373
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1375
    const/4 v10, 0x0

    .line 1379
    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1383
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1387
    :cond_6
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .line 1389
    .local v16, "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    if-nez v16, :cond_11

    const/4 v12, 0x0

    .line 1391
    .local v12, "preserveEglContextOnPause":Z
    :goto_3
    if-eqz v12, :cond_7

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1392
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1400
    .end local v12    # "preserveEglContextOnPause":Z
    .end local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :cond_8
    if-eqz v11, :cond_9

    .line 1401
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->finish()V

    .line 1410
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 1414
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1415
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1417
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    .line 1418
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    .line 1419
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1423
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1427
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    .line 1428
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1431
    :cond_c
    if-eqz v6, :cond_d

    .line 1435
    const/16 v18, 0x0

    .line 1436
    const/4 v6, 0x0

    .line 1437
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    .line 1438
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1442
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1445
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 1446
    if-eqz v2, :cond_12

    .line 1447
    const/4 v2, 0x0

    .line 1462
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    .line 1463
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    .line 1464
    const/4 v4, 0x1

    .line 1465
    const/4 v5, 0x1

    .line 1466
    const/4 v13, 0x1

    .line 1469
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1470
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1471
    const/4 v13, 0x1

    .line 1472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    move/from16 v17, v0

    .line 1473
    move-object/from16 v0, p0

    iget v9, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    .line 1474
    const/16 v18, 0x1

    .line 1482
    const/4 v4, 0x1

    .line 1484
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    .line 1486
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1487
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1509
    .end local v11    # "pausing":Z
    :catchall_1
    move-exception v19

    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1608
    :catchall_2
    move-exception v19

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1609
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglSurfaceLocked()V

    .line 1610
    invoke-direct/range {p0 .. p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->stopEglContextLocked()V

    .line 1611
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v19

    .line 1389
    .restart local v11    # "pausing":Z
    .restart local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :cond_11
    :try_start_8
    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$900(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Z

    move-result v12

    goto/16 :goto_3

    .line 1448
    .end local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :cond_12
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->tryAcquireEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v19

    if-eqz v19, :cond_e

    .line 1450
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1455
    const/16 v19, 0x1

    :try_start_a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    .line 1456
    const/4 v3, 0x1

    .line 1458
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    .line 1451
    :catch_0
    move-exception v15

    .line 1452
    .local v15, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    .line 1453
    throw v15

    .line 1507
    .end local v15    # "t":Ljava/lang/RuntimeException;
    :cond_13
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1517
    .end local v11    # "pausing":Z
    :cond_14
    if-eqz v4, :cond_15

    .line 1521
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->createSurface()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1522
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1523
    const/16 v19, 0x1

    :try_start_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1524
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1525
    monitor-exit v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1534
    const/4 v4, 0x0

    .line 1537
    :cond_15
    if-eqz v5, :cond_16

    .line 1538
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1540
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1541
    const/4 v5, 0x0

    .line 1544
    :cond_16
    if-eqz v3, :cond_18

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .line 1549
    .restart local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    if-eqz v16, :cond_17

    .line 1550
    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1552
    :cond_17
    const/4 v3, 0x0

    .line 1555
    .end local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :cond_18
    if-eqz v13, :cond_1a

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .line 1560
    .restart local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    if-eqz v16, :cond_19

    .line 1561
    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1563
    :cond_19
    const/4 v13, 0x0

    .line 1570
    .end local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;

    .line 1571
    .restart local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    if-eqz v16, :cond_1b

    .line 1572
    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$1000(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1575
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->swap()I

    move-result v14

    .line 1576
    .local v14, "swapError":I
    sparse-switch v14, :sswitch_data_0

    .line 1590
    const-string v19, "GLThread"

    const-string v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1592
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1593
    const/16 v19, 0x1

    :try_start_e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    .line 1594
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1595
    monitor-exit v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1599
    :goto_5
    :sswitch_0
    if-eqz v18, :cond_0

    .line 1600
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1525
    .end local v14    # "swapError":I
    .end local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :catchall_3
    move-exception v19

    :try_start_f
    monitor-exit v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v19

    .line 1527
    :cond_1c
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1528
    const/16 v19, 0x1

    :try_start_11
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1529
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    .line 1530
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1531
    monitor-exit v20

    goto/16 :goto_0

    :catchall_4
    move-exception v19

    monitor-exit v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1583
    .restart local v14    # "swapError":I
    .restart local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :sswitch_1
    const/4 v10, 0x1

    .line 1584
    goto :goto_5

    .line 1595
    :catchall_5
    move-exception v19

    :try_start_13
    monitor-exit v20
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v19
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1611
    .end local v14    # "swapError":I
    .end local v16    # "view":Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;
    :catchall_6
    move-exception v19

    :try_start_15
    monitor-exit v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v19

    .line 1576
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1620
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1313
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->finish()V

    .line 1315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    .line 1316
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->releaseEglContextLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    .line 1318
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1302
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    .line 1304
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$EglHelper;->destroySurface()V

    .line 1306
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1616
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1636
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1637
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1686
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1690
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    .line 1691
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1692
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1697
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1702
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1703
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1706
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1710
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestPaused:Z

    .line 1711
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1712
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    .line 1713
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1714
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1719
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1724
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1725
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1728
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1729
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWidth:I

    .line 1730
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHeight:I

    .line 1731
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mSizeChanged:Z

    .line 1732
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1733
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    .line 1734
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1738
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1743
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1744
    :catch_0
    move-exception v0

    .line 1745
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1748
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1749
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1777
    if-nez p1, :cond_0

    .line 1778
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1780
    :cond_0
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1781
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1783
    monitor-exit v1

    .line 1784
    return-void

    .line 1783
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1754
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1755
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldExit:Z

    .line 1756
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1757
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1759
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1760
    :catch_0
    move-exception v0

    .line 1761
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1764
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1765
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mShouldReleaseEglContext:Z

    .line 1769
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1770
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1642
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1643
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRequestRender:Z

    .line 1644
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1645
    monitor-exit v1

    .line 1646
    return-void

    .line 1645
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->setName(Ljava/lang/String;)V

    .line 1289
    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    .line 1295
    :goto_0
    return-void

    .line 1290
    :catch_0
    move-exception v0

    .line 1293
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1626
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1627
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1629
    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1630
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mRenderMode:I

    .line 1631
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1632
    monitor-exit v1

    .line 1633
    return-void

    .line 1632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1649
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1653
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    .line 1654
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1655
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1658
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1660
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1661
    :catch_0
    move-exception v0

    .line 1662
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1665
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1666
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1669
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1673
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mHasSurface:Z

    .line 1674
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1675
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1677
    :try_start_1
    invoke-static {}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18;->access$800()Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewAPI18$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1682
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1683
    return-void
.end method
